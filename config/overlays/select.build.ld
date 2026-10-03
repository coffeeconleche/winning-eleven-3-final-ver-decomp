OUTPUT_ARCH(mips)

SECTIONS
{
    . = 0x80188F78;

    .select :
    {
        build/overlays/select/generated/select.o(.rodata)
        build/overlays/select/generated/select.o(.text)
        build/overlays/select/generated/select.o(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
