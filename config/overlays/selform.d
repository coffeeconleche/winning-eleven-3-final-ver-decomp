build/overlays/selform/selform.elf: \
    build/overlays/selform/asm/overlays/selform/data/0.rodata.o \
    build/overlays/selform/src/overlays/selform/2C.o \
    build/overlays/selform/asm/overlays/selform/data/4484.data.o
build/overlays/selform/asm/overlays/selform/data/0.rodata.o:
build/overlays/selform/src/overlays/selform/2C.o:
build/overlays/selform/asm/overlays/selform/data/4484.data.o:
-include build/overlays/selform/asm/overlays/selform/data/0.rodata.d build/overlays/selform/src/overlays/selform/2C.d build/overlays/selform/asm/overlays/selform/data/4484.data.d
