# --- Compiler Configuration ---
VCOM   = nvc
VFLAGS = --std=2008
AFLAGS = --check-synthesis
WORKDIR = work
TOKEN   = $(WORKDIR)/.analyzed_token

# --- Dynamic Testbench Handling ---
# Default testbench if you just type 'make sim' without arguments
TB ?= madc_ctr_tb
RUN_TIME ?= 21ms
WAVE_FILE = $(TB)_wave.fst

# --- Grouped Source Files ---
# 1. Base Hardware Architecture (STRICT ordering to prevent WORK library issues)
RTL_SRCS = \
	madc_package.vhd \
	madc_ctr.vhd \
	MADC_slave_lite_v1_0_S00_AXI.vhd \
	MADC.vhd

# 2. All Simulation Testbench Files (Order does not matter here)
SIM_SRCS = \
	madc_ctr_tb.vhd \
	madc_tb.vhd


# Combine everything for the compilation stage
ALL_SRCS = $(RTL_SRCS) $(SIM_SRCS)

# --- Build Targets ---
.PHONY: all compile elaborate sim wave clean list

all: sim

# 1. Single-Step Compilation Phase
# Compiles all RTL and testbenches into the 'work' library at once
#compile: $(TOKEN)

compile: $(ALL_SRCS)
	@echo "Analyzing all hardware and simulation source files..."
	@mkdir -p $(WORKDIR)
	$(VCOM) $(VFLAGS) -a $(ALL_SRCS)
	@touch $(TOKEN)

# 2. Dynamic Elaboration Phase
# Elaborates whichever testbench is currently specified in $(TB)
elaborate: compile
	@echo "Elaborating target testbench: $(TB)..."
	$(VCOM) $(VFLAGS) -e  $(TB) 

# 3. Dynamic Simulation Phase
# Runs the simulation and labels the output wave file cleanly
sim:  
	@echo "Running simulation for $(TB)..."
	$(VCOM) $(VFLAGS) -a ${AFLAGS} $(ALL_SRCS)  -e $(TB) -r --stop-time=$(RUN_TIME) --wave=$(WAVE_FILE) 

# 4. Open Waveforms
wave:
	@echo "Opening $(WAVE_FILE) in surfer..."
	surfer $(WAVE_FILE) &

# Helper to see what files are configured
list:
	@echo "Available testbenches configured in sources:"
	@echo "madc_ctr_tb, madc_tb"

# Clean work metadata
clean:
	@echo "Cleaning workspace..."
	rm -rf $(WORKDIR) *_wave.fst