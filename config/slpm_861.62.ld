SECTIONS
{
    HIDDEN(__romPos = 0);
    _gp = 0x800E6A8C;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        header_DATA_START = .;
        build/asm/header.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80010000 : AT(main_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        main_RODATA_START = .;
        build/asm/data/800.rodata.o(.rodata);
        build/src/5EBC.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        main_TEXT_START = .;
        build/src/5EBC.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        build/asm/data/800.rodata.o(.data);
        build/src/5EBC.o(.data);
        build/asm/data/B6874.data.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_SDATA_START = .;
        build/asm/data/D728C.sdata.o(.sdata);
        main_SDATA_END = .;
        main_SDATA_SIZE = ABSOLUTE(main_SDATA_END - main_SDATA_START);
        main_BSS_START = .;
        build/asm/data/800.rodata.o(.bss);
        build/src/5EBC.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    load_padding_ROM_START = __romPos;
    load_padding_VRAM = ADDR(.load_padding);
    .load_padding : AT(load_padding_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        load_padding_DATA_START = .;
        build/assets/load_padding.o(.data);
        load_padding_DATA_END = .;
        load_padding_DATA_SIZE = ABSOLUTE(load_padding_DATA_END - load_padding_DATA_START);
    }
    __romPos += SIZEOF(.load_padding);
    load_padding_ROM_END = __romPos;
    load_padding_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
