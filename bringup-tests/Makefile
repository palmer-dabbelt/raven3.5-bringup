TESTS += $(patsubst %.S,rv64ui-pt-vec-%.riscv,$(wildcard *.S))
TESTS += $(patsubst %.S,rv64ui-p-scalar-%.riscv,$(wildcard *.S))
.SECONDARY: $(TESTS)

all: $(patsubst %.riscv,%.hex,$(TESTS))

clean::
	rm *.hex *.riscv

rv64ui-pt-vec-%.riscv: %.S
	riscv-gcc $< -o $@ -static -fpic -fvisibility=hidden -nostdlib -nostartfiles -Wa,-march=RVIMAFDXhwacha -I ../raven3p5_tests/env/pt/ -I ../raven3p5_tests/isa/macros/vector/ -T ../raven3p5_tests/env/pm/link.ld

rv64ui-p-scalar-%.riscv: %.S
	riscv-gcc $< -o $@ -static -fpic -fvisibility=hidden -nostdlib -nostartfiles -Wa,-march=RVIMAFDXhwacha -I ../raven3p5_tests/env/p/ -I ../raven3p5_tests/isa/macros/scalar/ -T ../raven3p5_tests/env/pm/link.ld

%.hex: %.riscv
	elf2hex 16 8192 $< > $@
