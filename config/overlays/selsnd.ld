SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    selsnd_ROM_START = __romPos;
    selsnd_VRAM = ADDR(.selsnd);
    .selsnd 0x80138000 : AT(selsnd_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        selsnd_RODATA_START = .;
        build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.o(.rodata);
        build/overlays/selsnd/src/overlays/selsnd/18.o(.rodata);
        selsnd_RODATA_END = .;
        selsnd_RODATA_SIZE = ABSOLUTE(selsnd_RODATA_END - selsnd_RODATA_START);
        selsnd_TEXT_START = .;
        build/overlays/selsnd/src/overlays/selsnd/18.o(.text);
        selsnd_TEXT_END = .;
        selsnd_TEXT_SIZE = ABSOLUTE(selsnd_TEXT_END - selsnd_TEXT_START);
        selsnd_DATA_START = .;
        build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.o(.data);
        build/overlays/selsnd/src/overlays/selsnd/18.o(.data);
        build/overlays/selsnd/asm/overlays/selsnd/data/E9C.data.o(.data);
        selsnd_DATA_END = .;
        selsnd_DATA_SIZE = ABSOLUTE(selsnd_DATA_END - selsnd_DATA_START);
        selsnd_BSS_START = .;
        build/overlays/selsnd/asm/overlays/selsnd/data/0.rodata.o(.bss);
        build/overlays/selsnd/src/overlays/selsnd/18.o(.bss);
        selsnd_BSS_END = .;
        selsnd_BSS_SIZE = ABSOLUTE(selsnd_BSS_END - selsnd_BSS_START);
    }
    __romPos += SIZEOF(.selsnd);
    __romPos = ALIGN(__romPos, 16);
    selsnd_ROM_END = __romPos;
    selsnd_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
