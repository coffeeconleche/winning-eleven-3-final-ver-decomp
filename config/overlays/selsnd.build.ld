OUTPUT_ARCH(mips)

SECTIONS
{
    . = 0x80138000;

    .selsnd :
    {
        build/overlays/selsnd/generated/selsnd.o(.rodata)
        build/overlays/selsnd/generated/selsnd.o(.text)
        build/overlays/selsnd/generated/selsnd.o(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
