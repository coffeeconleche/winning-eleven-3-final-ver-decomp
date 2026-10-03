build/overlays/enter/enter.elf: \
    build/overlays/enter/asm/overlays/enter/data/0.rodata.o \
    build/overlays/enter/src/overlays/enter/604.o \
    build/overlays/enter/asm/overlays/enter/data/6E64.data.o
build/overlays/enter/asm/overlays/enter/data/0.rodata.o:
build/overlays/enter/src/overlays/enter/604.o:
build/overlays/enter/asm/overlays/enter/data/6E64.data.o:
-include build/overlays/enter/asm/overlays/enter/data/0.rodata.d build/overlays/enter/src/overlays/enter/604.d build/overlays/enter/asm/overlays/enter/data/6E64.data.d
