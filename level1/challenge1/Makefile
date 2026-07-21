SRC ?= test.S
WORK_DIR := work

all: compile disass spike

$(WORK_DIR):
	mkdir -p $(WORK_DIR)

compile: | $(WORK_DIR)
	riscv64-unknown-elf-gcc -march=rv64gc -mabi=lp64d -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I$(PWD)/common -T$(PWD)/common/link.ld $(SRC) -o $(WORK_DIR)/test.elf

disass: compile
	riscv64-unknown-elf-objdump -D $(WORK_DIR)/test.elf > $(WORK_DIR)/test.disass

spike: compile
	spike --log-commits --log $(WORK_DIR)/test_spike.dump --isa=rv64gc +signature=$(WORK_DIR)/test_spike_signature.log $(WORK_DIR)/test.elf

clean:
	rm -rf $(WORK_DIR)
