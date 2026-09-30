

/***************************** Include Files *******************************/
#include "MADC.h"
#include "sleep.h"

/************************** Function Definitions ***************************/

static void madc_wait(u32 status)
{
	u32 raw_data = 0;

	do
	{
		raw_data = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_STATUS);
	}
	while(raw_data != status);
}

void madc_cfg_nplc(float nplc)
{
    u32 nplc_reg_value = 20000;

    if (0.2 == nplc)
    {
       nplc_reg_value = 4E+3; 
    }
    else if (1 == nplc)
    {
       nplc_reg_value = 2E+4; 
    }
    else if (2 == nplc)
    {
        nplc_reg_value = 4E+4; 
    }
    else if (10 == nplc)
    {
        nplc_reg_value = 2E+5; 
    }
    else if (100 == nplc)
    {
        nplc_reg_value = 2E+6; 
    }
    else
    {
        nplc_reg_value = 2E+4; 
    }
    
        
    madc_wait(MADC_IDLE);
    MADC_mWriteReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_NPLC, nplc_reg_value);
}

#define R_FACTOR 2 /* LT5400-2 : (100k+100k)/100k, look on the schematic*/

double madc_meas(double vref)
{
    u32 n_cnt = 0;
    u32 p_cnt = 0;
    u32 tot_cnt = 1;
    double meas = 0.0;

    madc_wait(MADC_IDLE);
    usleep(10);
    n_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_N_CNT);
    p_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_P_CNT);
    tot_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_TOT_CNT);
    meas = vref*(((double)p_cnt - (double)n_cnt)/(double)tot_cnt)*R_FACTOR;
    return meas;

}

double madc_calib(double vref)
{
    u32 n_cnt = 0;
    u32 p_cnt = 0;
    u32 tot_cnt = 1;
    double calib = 0.0;

    madc_wait(MADC_IDLE);
    usleep(10);
    MADC_mWriteReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_CALIB, 1);
    
    madc_wait(MADC_IDLE);
    usleep(10);
    n_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_N_CNT);
    p_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_P_CNT);
    tot_cnt = MADC_mReadReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_TOT_CNT);
    MADC_mWriteReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_CALIB, 0);

    calib = vref*(((double)p_cnt - (double)n_cnt)/(double)tot_cnt)*R_FACTOR;
    
    return calib;

}