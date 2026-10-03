OUTPUT_ARCH(mips)

SECTIONS
{
    . = 0x80188F78;

    .uniform :
    {
        build/overlays/uniform/generated/uniform.o(.rodata)
        build/overlays/uniform/generated/uniform.o(.text)
        build/overlays/uniform/generated/uniform.o(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
