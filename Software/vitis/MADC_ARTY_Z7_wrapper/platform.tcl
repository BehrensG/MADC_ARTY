# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC_ARTY_Z7_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/grzegorz/git/MADC_ARTY/Software/vitis/MADC_ARTY_Z7_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MADC_ARTY_Z7_wrapper}\
-hw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}\
-out {/home/grzegorz/git/MADC_ARTY/Software/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform write
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate
platform clean
platform generate
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform active {MADC_ARTY_Z7_wrapper}
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform clean
platform generate
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/MADC_ARTY/Software/vivado/MADC_ARTY_Z7/MADC_ARTY_Z7_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
