SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    selform_ROM_START = __romPos;
    selform_VRAM = ADDR(.selform);
    .selform 0x8011D800 : AT(selform_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        selform_RODATA_START = .;
        build/overlays/selform/asm/overlays/selform/data/0.rodata.o(.rodata);
        build/overlays/selform/src/overlays/selform/2C.o(.rodata);
        selform_RODATA_END = .;
        selform_RODATA_SIZE = ABSOLUTE(selform_RODATA_END - selform_RODATA_START);
        selform_TEXT_START = .;
        build/overlays/selform/src/overlays/selform/2C.o(.text);
        selform_TEXT_END = .;
        selform_TEXT_SIZE = ABSOLUTE(selform_TEXT_END - selform_TEXT_START);
        selform_DATA_START = .;
        build/overlays/selform/asm/overlays/selform/data/0.rodata.o(.data);
        build/overlays/selform/src/overlays/selform/2C.o(.data);
        build/overlays/selform/asm/overlays/selform/data/4484.data.o(.data);
        selform_DATA_END = .;
        selform_DATA_SIZE = ABSOLUTE(selform_DATA_END - selform_DATA_START);
        selform_BSS_START = .;
        build/overlays/selform/asm/overlays/selform/data/0.rodata.o(.bss);
        build/overlays/selform/src/overlays/selform/2C.o(.bss);
        selform_BSS_END = .;
        selform_BSS_SIZE = ABSOLUTE(selform_BSS_END - selform_BSS_START);
    }
    __romPos += SIZEOF(.selform);
    __romPos = ALIGN(__romPos, 16);
    selform_ROM_END = __romPos;
    selform_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
