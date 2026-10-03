OUTPUT_ARCH(mips)

SECTIONS
{
    . = 0x8011D800;

    .selform :
    {
        build/overlays/selform/generated/selform.o(.rodata)
        build/overlays/selform/generated/selform.o(.text)
        build/overlays/selform/generated/selform.o(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
