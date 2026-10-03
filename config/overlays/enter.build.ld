OUTPUT_ARCH(mips)

SECTIONS
{
    . = 0x80188F78;

    .enter :
    {
        build/overlays/enter/generated/enter.o(.rodata)
        build/overlays/enter/generated/enter.o(.text)
        build/overlays/enter/generated/enter.o(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
