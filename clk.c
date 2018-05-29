#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "xclk_wiz.h" // need this one to control the clock wizard(s)
#include "xil_types.h"
#include "xparameters.h"
#include "xstatus.h"

#define CLK_LOCK 1

int main() {
int i, j, k;
unsigned int phase;
unsigned int Count = 0;
unsigned int Error = 0;
unsigned int Status = XST_SUCCESS;
unsigned int lock_read;
unsigned int duty;
unsigned int divide;
unsigned int reg;
unsigned int div[4], frac[4];

XClk_Wiz_Config *xclk_config0;
XClk_Wiz xclk_inst0;

// assumes there is only one clock wizard on the board
// it might be a good idea to implement TWO clock wizards, one is dedicated to
// running the processor and a second one that has the 4 phased outputs.
printf("Looking up clk_wiz%d\n", XPAR_CLK_WIZ_0_DEVICE_ID);
xclk_config0 = XClk_Wiz_LookupConfig(XPAR_CLK_WIZ_0_DEVICE_ID);
if (!xclk_config0) {
return XST_FAILURE;
}

// the only item we are going to use is the base address but
// this is a convenient way to get it and be independent of
// future changes in address map
printf("Initializing clk_wiz%d's configuration\n",
XPAR_CLK_WIZ_0_DEVICE_ID);
Status = XClk_Wiz_CfgInitialize(&xclk_inst0, xclk_config0,
xclk_config0->BaseAddr);
if (Status != XST_SUCCESS) {
return XST_FAILURE;
}

// most likely the clock will long since have locked up
// but just in case
printf("checking clock lock ... \n");
for (i = 0; i < 2000; i++)
; // stupid delay

lock_read = Xil_In32(xclk_config0->BaseAddr + 0x04);
while (!(lock_read & CLK_LOCK)) {
if (Count == 10000) {
Error++;
break;
}
Count++;
}
if (Error) {
printf("\n ERROR: Clock is not locked for default frequency : 0x%x\n\r",
*(u32 *) (xclk_config0->BaseAddr + 0x04) & CLK_LOCK);
exit(0);
}
printf("clock is locked \n");

// this sequence is suppose to reset registers to values that were
// originally computed when the IP Wizard was run.
XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x25C, 0x00000004);
XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x25C, 0x00000000);

// read some values just out of curiosity
// this is are global registers that affect all available clock outputs
reg = XClk_Wiz_ReadReg(xclk_config0->BaseAddr, 0x200);
printf("Clock Config Reg 0 = 0x%X \n", reg);
printf("\tDIVCLK_DIVIDE=%d\n", reg & 0xFF);
reg = reg >> 8;
printf("\tCLKFBOUT_MULT=%d\n", reg & 0xFF);
reg = reg >> 8;
printf("\tCLKBOUT_FRAC=%d\n", reg & 0xFF);
reg = reg >> 8;
printf("\tCLKBOUT_FRAC_EN=%d\n", reg & 0x01);

phase = XClk_Wiz_ReadReg(xclk_config0->BaseAddr, 0x20C);
printf("The phase is: 0x%X \n", phase);

duty = XClk_Wiz_ReadReg(xclk_config0->BaseAddr, 0x210);
printf("The duty cycle is: 0x%X \n", duty);

divide = XClk_Wiz_ReadReg(xclk_config0->BaseAddr, 0x208);
printf("The divide is: 0x%X \n", divide);

// VCO running at 1GHz
// notes that DIV and FRAC are both 8 bit values only
// so this means that FRAC can never be greater than 255
// to get other output combinations one would have to change
// the global values for DIV and FRAC and the channel
// DIV and FRAC
// the base address offset for the global CLKBOUT is 0x200
div[0] = 10; frac[0] = 0; // divide by 10.000 => 100MHz
div[1] = 5; frac[1] = 125; // divide by 5.125  => 195.12MHz
div[2] = 3; frac[2] = 250; // divide by 3.250  => 333MHz
div[3] = 2; frac[3] = 100; // divide by 2.100  => 476.19MHz
k = 0;
while (1) {
reg = div[k] + (frac[k] << 8); // build up the magic number
printf("\n\tdiv.frac = %d.%d", div[k], frac[k]);

XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x208, reg); // clk0 divider
XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x214, reg); // clk1 divider
// clk2 divider is address offset 0x22c
// clk3 divider is address offset 0x238

// update registers to update output frequency
XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x25C, 0x00000007); //0111
XClk_Wiz_WriteReg(xclk_config0->BaseAddr, 0x25C, 0x00000002); //00

// one could re-test for lock here

// delay for looking at signals with scope
for (i = 0; i < 100000; i++)
for (j = 0; j < 2000; j++)
;

// test the next frequency
if (++k > 3)
k = 0;
}

return 0;
}
