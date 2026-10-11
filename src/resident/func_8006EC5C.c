#include "common.h"

/* The callee reads only $a0-$a2; complete record layout and API are unknown. */
extern void func_8005BA30(void *, u32, u32);

/* The void view does not establish the original return contract. */
void func_8006EC5C(void *record)
{
    func_8005BA30(record, 14, 15);
}
