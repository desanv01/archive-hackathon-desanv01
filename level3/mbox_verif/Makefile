TOPLEVEL_LANG ?= verilog
SIM ?= icarus
WAVES ?= 1

PWD := $(shell pwd)

export PYTHONPATH := $(PWD):$(PYTHONPATH)

VERILOG_SOURCES := $(sort $(wildcard $(PWD)/../mbox_design/verilog/*.v))

TOPLEVEL := mk_non_restoring_divider
COCOTB_TEST_MODULES := test_divider

include $(shell cocotb-config --makefiles)/Makefile.sim

clean_all: clean
	rm -rf evidence results.xml dump.fst dump.vcd sim_build __pycache__