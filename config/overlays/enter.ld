SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    enter_ROM_START = __romPos;
    enter_VRAM = ADDR(.enter);
    .enter 0x80188F78 : AT(enter_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        enter_RODATA_START = .;
        build/overlays/enter/asm/overlays/enter/data/0.rodata.o(.rodata);
        build/overlays/enter/src/overlays/enter/604.o(.rodata);
        enter_RODATA_END = .;
        enter_RODATA_SIZE = ABSOLUTE(enter_RODATA_END - enter_RODATA_START);
        enter_TEXT_START = .;
        build/overlays/enter/src/overlays/enter/604.o(.text);
        enter_TEXT_END = .;
        enter_TEXT_SIZE = ABSOLUTE(enter_TEXT_END - enter_TEXT_START);
        enter_DATA_START = .;
        build/overlays/enter/asm/overlays/enter/data/0.rodata.o(.data);
        build/overlays/enter/src/overlays/enter/604.o(.data);
        build/overlays/enter/asm/overlays/enter/data/6E64.data.o(.data);
        enter_DATA_END = .;
        enter_DATA_SIZE = ABSOLUTE(enter_DATA_END - enter_DATA_START);
        enter_BSS_START = .;
        build/overlays/enter/asm/overlays/enter/data/0.rodata.o(.bss);
        build/overlays/enter/src/overlays/enter/604.o(.bss);
        enter_BSS_END = .;
        enter_BSS_SIZE = ABSOLUTE(enter_BSS_END - enter_BSS_START);
    }
    __romPos += SIZEOF(.enter);
    __romPos = ALIGN(__romPos, 16);
    enter_ROM_END = __romPos;
    enter_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
