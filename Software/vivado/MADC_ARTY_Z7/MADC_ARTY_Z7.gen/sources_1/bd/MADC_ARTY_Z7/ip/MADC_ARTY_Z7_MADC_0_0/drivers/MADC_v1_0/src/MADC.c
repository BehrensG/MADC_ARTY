

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

void madc_cfg_nplc(u32 nplc)
{
    madc_wait(MADC_IDLE);
    MADC_mWriteReg(XPAR_MADC_0_S00_AXI_BASEADDR, MADC_AXI_REG_NPLC, nplc);
}

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
    meas = vref*(((double)p_cnt - (double)n_cnt)/(double)tot_cnt);
    return meas;

}