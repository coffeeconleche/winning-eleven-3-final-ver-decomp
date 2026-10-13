#include "common.h"

/* Empty hook: the single known caller (func_8004F25C) jals here after byte
 * stores derived from shifted halfwords, with no dedicated argument setup.
 * Its return-register residue escapes unchanged through the caller epilogue;
 * the historical purpose and complete return contract are unknown. */
void func_8005A4F4(void)
{
}
