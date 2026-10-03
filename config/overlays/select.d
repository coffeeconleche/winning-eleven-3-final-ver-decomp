build/overlays/select/select.elf: \
    build/overlays/select/asm/overlays/select/data/0.rodata.o \
    build/overlays/select/src/overlays/select/4BE0.o \
    build/overlays/select/asm/overlays/select/data/48AD8.data.o
build/overlays/select/asm/overlays/select/data/0.rodata.o:
build/overlays/select/src/overlays/select/4BE0.o:
build/overlays/select/asm/overlays/select/data/48AD8.data.o:
-include build/overlays/select/asm/overlays/select/data/0.rodata.d build/overlays/select/src/overlays/select/4BE0.d build/overlays/select/asm/overlays/select/data/48AD8.data.d
