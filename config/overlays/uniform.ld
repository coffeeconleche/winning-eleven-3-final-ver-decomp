SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    uniform_ROM_START = __romPos;
    uniform_VRAM = ADDR(.uniform);
    .uniform 0x80188F78 : AT(uniform_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        uniform_RODATA_START = .;
        build/overlays/uniform/asm/overlays/uniform/data/0.rodata.o(.rodata);
        build/overlays/uniform/src/overlays/uniform/7A8.o(.rodata);
        uniform_RODATA_END = .;
        uniform_RODATA_SIZE = ABSOLUTE(uniform_RODATA_END - uniform_RODATA_START);
        uniform_TEXT_START = .;
        build/overlays/uniform/src/overlays/uniform/7A8.o(.text);
        uniform_TEXT_END = .;
        uniform_TEXT_SIZE = ABSOLUTE(uniform_TEXT_END - uniform_TEXT_START);
        uniform_DATA_START = .;
        build/overlays/uniform/asm/overlays/uniform/data/0.rodata.o(.data);
        build/overlays/uniform/src/overlays/uniform/7A8.o(.data);
        uniform_DATA_END = .;
        uniform_DATA_SIZE = ABSOLUTE(uniform_DATA_END - uniform_DATA_START);
        uniform_BSS_START = .;
        build/overlays/uniform/asm/overlays/uniform/data/0.rodata.o(.bss);
        build/overlays/uniform/src/overlays/uniform/7A8.o(.bss);
        uniform_BSS_END = .;
        uniform_BSS_SIZE = ABSOLUTE(uniform_BSS_END - uniform_BSS_START);
    }
    __romPos += SIZEOF(.uniform);
    __romPos = ALIGN(__romPos, 16);
    uniform_ROM_END = __romPos;
    uniform_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
