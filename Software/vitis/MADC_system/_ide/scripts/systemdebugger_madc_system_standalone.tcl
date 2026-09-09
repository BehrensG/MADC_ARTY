# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC_system/_ide/scripts/systemdebugger_madc_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC_system/_ide/scripts/systemdebugger_madc_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Arty Z7 003017B7ED73A" && level==0 && jtag_device_ctx=="jsn-Arty Z7-003017B7ED73A-13722093-0"}
fpga -file /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC/_ide/bitstream/MADC_ARTY_Z7_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC_ARTY_Z7_wrapper/export/MADC_ARTY_Z7_wrapper/hw/MADC_ARTY_Z7_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC/Debug/MADC.elf
configparams force-mem-access 0
bpadd -addr &main
