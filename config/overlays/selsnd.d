build/overlays/selsnd/selsnd.elf: \
    build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.o \
    build/overlays/selsnd/src/overlays/selsnd/18.o \
    build/overlays/selsnd/asm/overlays/selsnd/data/E9C.data.o
build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.o:
build/overlays/selsnd/src/overlays/selsnd/18.o:
build/overlays/selsnd/asm/overlays/selsnd/data/E9C.data.o:
-include build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.d build/overlays/selsnd/src/overlays/selsnd/18.d build/overlays/selsnd/asm/overlays/selsnd/data/E9C.data.d
