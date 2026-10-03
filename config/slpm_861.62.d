build/slpm_861.62.elf: \
    build/asm/header.o \
    build/asm/data/800.rodata.o \
    build/src/5EBC.o \
    build/asm/data/B6874.data.o \
    build/asm/data/D728C.sdata.o \
    build/assets/load_padding.o
build/asm/header.o:
build/asm/data/800.rodata.o:
build/src/5EBC.o:
build/asm/data/B6874.data.o:
build/asm/data/D728C.sdata.o:
build/assets/load_padding.o:
-include build/asm/header.d build/asm/data/800.rodata.d build/src/5EBC.d build/asm/data/B6874.data.d build/asm/data/D728C.sdata.d build/assets/load_padding.d
