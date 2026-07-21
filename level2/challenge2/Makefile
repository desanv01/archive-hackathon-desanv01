
all: gen compile disass spike check

gen: clean
	@echo '[UpTickPro] Test Generation ------'
	aapg setup
	aapg gen --config_file $(PWD)/rv64i.yaml --asm_name test --output_dir $(PWD) --arch rv64

compile:
	@echo '[UpTickPro] Test Compilation ------'
	riscv64-unknown-elf-gcc -march=rv64imafdczicsr_zifencei -mabi=lp64 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I$(PWD)/work/common -T$(PWD)/test.ld test.S $(PWD)/work/common/crt.S -o test.elf

disass: compile
	@echo '[UpTickPro] Test Disassembly ------'
	riscv64-unknown-elf-objdump -D test.elf > test.disass

spike: compile
	@echo '[UpTickPro] Spike Run ------'
	spike --isa=rv64imafdczicsr_zifencei test.elf
	spike --log-commits --log  test_spike.dump --isa=rv64imafdczicsr_zifencei +signature=test_spike_signature.log test.elf

check: test_spike.dump
	@echo '[UpTickPro] Number of Exceptions'
	spike -l --isa=rv64imafdczicsr_zifencei test.elf 2> spike.log
	grep trap_illegal_instruction spike.log > exceptions.log
	cat exceptions.log
	wc -l exceptions.log

clean:
	@echo '[UpTickPro] Clean ------'
	rm -rf work *.elf *.disass *.log *.dump *.ld *.S *.ini
