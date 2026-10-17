#include "common.h"

/* Same partial access view as the matching 5B864 definition; no new storage.
 * Native adaptation must reconcile older private byte-pointer declarations. */
typedef struct {
    u8 before2[2];
    u16 half2;
    u8 between4[2];
    u16 half6;
    u32 word8;
    u8 betweenC[4];
    u32 word10;
    u8 between14[0x12];
    u16 half26;
    u8 between28[0x37C];
    u8 copied3A4;
    u8 between3A5[5];
    u8 phase3AA;
} RecordView;

extern u8 D_800FF748[];
extern u8 D_800E81FC;
extern s32 func_800AD678(void);
extern s32 func_8001E6B8(s32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B864(RecordView *, u16);

/* Partial PS1 object/bank/scratch views, with unknown field meanings. Helpers
 * can mutate aliased state. The actual two-byte totals array is indexed by
 * the observed selector and selector^1, requiring the original 0/1 domain.
 * No selector clamp, table extent, native pointer or ownership is inferred. */
void func_80085C68(u8 *object)
{
    u8 *bank = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 totals[2];
    s32 x;
    /* Measured value binding only; every writePhase path assigns this value. */
    register s32 nextPhase __asm__("$2");
    u8 id;

    switch (object[0x397]) {
    case 0:
        object[0x3D3] = 0;
        if ((scratch[0x2CE] & 0xFF) == 1) {
            id = object[0x38D];
            if (id == scratch[0x2AD]) {
                func_8005BA30(object, 5, (func_800AD678() % 16) & 0xFF);
                *(u32 *)(object + 0x3A0) = 8;
                nextPhase = 18;
                goto writePhase;
            }
            if (id == scratch[0x2AE] && object[0x3D2] == 0) {
                if (*(u16 *)(object + 0x38E) == 0x42) {
                    func_8005BD1C(object);
                }
                if (object[0x390] == 25) {
                    func_8005BA30(object, 0x42, 16);
                }
                break;
            }
        }
        if (D_800E81FC == 0 || (u32)(D_800E81FC - 1) < 2U) {
            u8 initPhase = 32;

            *(u32 *)(object + 0x3A0) = 0;
            object[0x397] = initPhase;
        } else {
            object[0x3B0] = func_8001E6B8(48);
            object[0x397] = 16;
        }
        object[0x3A5] = 12;
        object[0x3A6] = 24;
        object[0x3AB] = func_8005B36C(*(s16 *)(object + 2),
            *(s16 *)(object + 6), 0, -0x3B66);
        if (*(u16 *)(object + 0x38E) != 1) {
            func_8005BA30(object, 1, func_8001E6B8(21) & 0xFF);
        }
        object[0x3B0] = func_800AD678() % 32 + 16;
        break;

    case 16:
        if (object[0x3B0] != 0) {
            object[0x3B0]--;
        } else {
            func_8005BA30(object, 5, func_8001E6B8(35) & 0xFF);
            *(u32 *)(object + 0x3A0) = 12;
            nextPhase = object[0x397];
            nextPhase++;
            goto writePhase;
        }
        break;

    case 17: {
        u8 heading;

        func_8005BD1C(object);
        heading = func_8005B7CC(object[0x3AB], object[0x3AA], 4);
        object[0x3AA] = heading;
        if ((heading & 0xFF) == object[0x3AB]) {
            object[0x397]++;
        }
        func_8005B864((RecordView *)object, *(u16 *)(object + 0x3A0));
        break;
    }
    case 18: {
        s16 z;

        func_8005BD1C(object);
        object[0x3AA] = func_8005B7CC(func_8005B36C(*(s16 *)(object + 2),
            *(s16 *)(object + 6), 0, -0x3B66) & 0xFF, object[0x3AA], 1);
        func_8005B864((RecordView *)object, *(u16 *)(object + 0x3A0));
        z = *(s16 *)(object + 6);
        if (z < -0x2100 - func_8001E6B8(32)) {
            x = -0x3320;
            if (object[0x38D] >= 12U) {
                x = 0x3320;
            }
            object[0x3AB] = func_8005B36C(*(s16 *)(object + 2),
                *(s16 *)(object + 6), x, -0x2100);
            /* Zero-instruction address identity retains the observed byte
             * store before the phase reread; no memory/volatile claim. */
            __asm__("" : "=r"(object) : "0"(object));
            nextPhase = object[0x397] + 1;
            goto writePhase;
        }
        break;
    }
    case 19: {
        u32 heading;
        s32 magnitude;

        func_8005B864((RecordView *)object, *(u16 *)(object + 0x3A0));
        func_8005BD1C(object);
        heading = func_8005B7CC(object[0x3AB], object[0x3AA], 2);
        magnitude = *(s16 *)(object + 2);
        if (magnitude < 0) {
            magnitude = -magnitude;
        }
        magnitude = magnitude <= 0x3320;
        object[0x3AA] = heading;
        if (!magnitude) {
            nextPhase = 255;
            goto writePhase;
        }
        break;
    }
    case 32:
        func_8005BA30(object, 1, 0);
        totals[0] = scratch[0x2D1] + scratch[0x2DB];
        totals[1] = scratch[0x2D2] + scratch[0x2DC];
        if ((scratch[0x2E1] & 0xFF) == 2 &&
            (bank[0x8F1F] & 0x60) == 0x40 && bank[0x8F23] == 2) {
            totals[0] = bank[0xABA8];
            totals[1] = bank[0xABA8] ^ 1;
        }
        if (totals[object[0x398]] > totals[object[0x398] ^ 1]) {
            if (func_8001E6B8(2) != 0) {
                object[0x396] = 0x33;
                nextPhase = 0x58;
            } else {
                object[0x396] = 0x33;
                nextPhase = 0x68;
            }
        } else {
            object[0x396] = 0x33;
            nextPhase = 0x70;
        }
        goto writePhase;
    }
    return;

writePhase:
    object[0x397] = nextPhase;
}
