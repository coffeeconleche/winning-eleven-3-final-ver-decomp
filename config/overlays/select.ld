SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    select_ROM_START = __romPos;
    select_VRAM = ADDR(.select);
    .select 0x80188F78 : AT(select_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        select_RODATA_START = .;
        build/overlays/select/asm/overlays/select/data/0.rodata.o(.rodata);
        build/overlays/select/src/overlays/select/4BE0.o(.rodata);
        select_RODATA_END = .;
        select_RODATA_SIZE = ABSOLUTE(select_RODATA_END - select_RODATA_START);
        select_TEXT_START = .;
        build/overlays/select/src/overlays/select/4BE0.o(.text);
        select_TEXT_END = .;
        select_TEXT_SIZE = ABSOLUTE(select_TEXT_END - select_TEXT_START);
        select_DATA_START = .;
        build/overlays/select/asm/overlays/select/data/0.rodata.o(.data);
        build/overlays/select/src/overlays/select/4BE0.o(.data);
        build/overlays/select/asm/overlays/select/data/48AD8.data.o(.data);
        select_DATA_END = .;
        select_DATA_SIZE = ABSOLUTE(select_DATA_END - select_DATA_START);
        select_BSS_START = .;
        build/overlays/select/asm/overlays/select/data/0.rodata.o(.bss);
        build/overlays/select/src/overlays/select/4BE0.o(.bss);
        select_BSS_END = .;
        select_BSS_SIZE = ABSOLUTE(select_BSS_END - select_BSS_START);
    }
    __romPos += SIZEOF(.select);
    __romPos = ALIGN(__romPos, 16);
    select_ROM_END = __romPos;
    select_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
