#include "common.h"

/* Access view only; the original descriptor type and field meanings are unknown. */
typedef struct {
    u32 word0;
    u8 byte4, padding5;
    u16 half6;
    u32 word8;
    u8 *pointer12;
    u16 half16, half18;
    u8 byte20, byte21, byte22, byte23, byte24, padding25;
    u16 half26, half28, half30, half32, padding34;
    u32 word36;
} Descriptor40;

extern Descriptor40 D_80105508[];
extern u8 *func_8001D004(u16);

void func_80193FB4(u8 index, u16 key, u32 word8, u16 half16, u16 half18,
                   u8 byte20, u8 byte21, u16 half30, u16 half32,
                   u16 half26, u16 half28, u8 byte22, u8 byte23, u8 byte24,
                   u32 word36, u8 word0, u8 byte4) {
    Descriptor40 *entry = &D_80105508[index];

    entry->word0 = word0;
    entry->byte4 = byte4;
    entry->half6 = 4;
    entry->pointer12 = func_8001D004(key);
    entry->word8 = word8;
    entry->half16 = half16;
    entry->half18 = half18;
    entry->byte20 = byte20;
    entry->byte21 = byte21;
    entry->half30 = half30;
    entry->half32 = half32;
    entry->half26 = half26;
    entry->half28 = half28;
    entry->byte22 = byte22;
    entry->byte23 = byte23;
    entry->byte24 = byte24;
    entry->word36 = word36;
}
