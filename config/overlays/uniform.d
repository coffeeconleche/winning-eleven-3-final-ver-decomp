build/overlays/uniform/uniform.elf: \
    build/overlays/uniform/asm/overlays/uniform/data/0.rodata.o \
    build/overlays/uniform/src/overlays/uniform/7A8.o
build/overlays/uniform/asm/overlays/uniform/data/0.rodata.o:
build/overlays/uniform/src/overlays/uniform/7A8.o:
-include build/overlays/uniform/asm/overlays/uniform/data/0.rodata.d build/overlays/uniform/src/overlays/uniform/7A8.d
