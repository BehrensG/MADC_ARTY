
#ifndef MADC_H
#define MADC_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xil_io.h"

#define MADC_AXI_REG_STATUS 0
#define MADC_AXI_REG_NPLC 4
#define MADC_AXI_REG_P_CNT 8
#define MADC_AXI_REG_N_CNT 12
#define MADC_AXI_REG_TOT_CNT 16
#define MADC_AXI_REG_VREF 20

#define MADC_IDLE  1
#define MADC_RUN   2

/**************************** Type Definitions *****************************/

/**
 *
 * Write a value to a MADC register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the MADCdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void MADC_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define MADC_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a MADC register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the MADC device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 MADC_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define MADC_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the MADC instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus MADC_Reg_SelfTest(void * baseaddr_p);

double madc_meas(double vref);
void madc_cfg_nplc(u32 nplc);
#endif // MADC_H
