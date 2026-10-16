#include "types.h"

/* Partial native PS1 views; names do not claim a complete game API. */
typedef struct {
    u8 active;
    u8 unk1;
    u16 x;
    u16 unk4;
    u16 z;
    u8 unknown[992];
} Player20E30;

typedef struct {
    u8 unknown[6];
    s16 x;
    s16 y;
    u16 unknownA;
} Marker20E30;

/* Only key 2 is consumed here; the helper masks keys to 16 bits. */
extern Marker20E30 *func_8001D004(u32 key);
extern Player20E30 D_800FF748[];
#define SCRATCH8(offset) (*(u8 *)(0x1F800000u + (offset)))
#define PLAYERS (*(Player20E30 **)0x1F8002F4)

/* The known callers consume no return value. Scratch RAM, existing resource
 * buffers and 1000-byte player records must be valid native mapped storage.
 * Signed halfword casts and result narrowing follow the original PS1 ABI.
 * Keep inactive markers untouched and retain the second lookup in large-layout
 * modes: the original performs it even though both lookups use key 2. */
void func_80020E30(void)
{
    Player20E30 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    Marker20E30 *markers;
    Player20E30 *player;
    s32 i;

    markers = func_8001D004(2);
    if (SCRATCH8(0x2E6) < 5u) {
        player = PLAYERS;
        switch (SCRATCH8(0x2DF)) {
        case 0:
        case 2:
            for (i = 2; i < 25; i++, player++) {
                if (player->active) {
                    markers[i].x = (s16)player->x / 303 - 3;
                    markers[i].y = -(s16)player->z / 356 - 1;
                }
            }
            break;
        case 1:
        case 3:
            markers[2].x = (s16)player->x / 303 - 3;
            markers[2].y = -(s16)player->z / 356 - 1;
            player++;
            for (i = 3; i < 14; i++, player++) {
                if (player->active) {
                    markers[i + 11].x = (s16)player->x / 303 - 3;
                    markers[i + 11].y = -(s16)player->z / 356 - 1;
                }
            }
            for (i = 14; i < 25; i++, player++) {
                if (player->active) {
                    markers[i - 11].x = (s16)player->x / 303 - 3;
                    markers[i - 11].y = -(s16)player->z / 356 - 1;
                }
            }
            break;
        }
        player = &base[(u8)((u8)scratch[0x240] % 24u)];
        markers[0].x = (s16)player->x / 303 - 3;
        markers[0].y = -(s16)player->z / 356 - 1;
        player = &base[(u8)((u8)scratch[0x241] % 24u)];
        markers[1].x = (s16)player->x / 303 - 3;
        markers[1].y = -(s16)player->z / 356 - 1;
    } else {
        markers = func_8001D004(2);
        player = PLAYERS;
        if (SCRATCH8(0x2E2) == 1 || SCRATCH8(0x2E2) == 4 || SCRATCH8(0x2E0) == 0) {
            switch ((u8)scratch[0x2DF]) {
            case 0:
            case 2:
                for (i = 2; i < 25; i++, player++) {
                    if (player->active) {
                        markers[i].x = -(s16)player->z / 305 + 125;
                        markers[i].y = -(s16)player->x / 361 - 86;
                    }
                }
                break;
            case 1:
            case 3:
                markers[2].x = -(s16)player->z / 305 + 125;
                markers[2].y = -(s16)player->x / 361 - 86;
                player++;
                for (i = 3; i < 14; i++, player++) {
                    if (player->active) {
                        markers[i + 11].x = -(s16)player->z / 305 + 125;
                        markers[i + 11].y = -(s16)player->x / 361 - 86;
                    }
                }
                for (i = 14; i < 25; i++, player++) {
                    if (player->active) {
                        markers[i - 11].x = -(s16)player->z / 305 + 125;
                        markers[i - 11].y = -(s16)player->x / 361 - 86;
                    }
                }
                break;
            }
            player = &base[(u8)((u8)scratch[0x240] % 24u)];
            markers[0].x = -(s16)player->z / 305 + 125;
            markers[0].y = -(s16)player->x / 361 - 86;
            player = &base[(u8)((u8)scratch[0x241] % 24u)];
            markers[1].x = -(s16)player->z / 305 + 125;
            markers[1].y = -(s16)player->x / 361 - 86;
        } else {
            switch ((u8)scratch[0x2DF]) {
            case 0:
            case 2:
                for (i = 2; i < 25; i++, player++) {
                    if (player->active) {
                        markers[i].x = (s16)player->z / 305 + 125;
                        markers[i].y = (s16)player->x / 361 - 86;
                    }
                }
                break;
            case 1:
            case 3:
                markers[2].x = (s16)player->z / 305 + 125;
                markers[2].y = (s16)player->x / 361 - 86;
                player++;
                for (i = 3; i < 14; i++, player++) {
                    if (player->active) {
                        markers[i + 11].x = (s16)player->z / 305 + 125;
                        markers[i + 11].y = (s16)player->x / 361 - 86;
                    }
                }
                for (i = 14; i < 25; i++, player++) {
                    if (player->active) {
                        markers[i - 11].x = (s16)player->z / 305 + 125;
                        markers[i - 11].y = (s16)player->x / 361 - 86;
                    }
                }
                break;
            }
            player = &base[(u8)((u8)scratch[0x240] % 24u)];
            markers[0].x = (s16)player->z / 305 + 125;
            markers[0].y = (s16)player->x / 361 - 86;
            player = &base[(u8)((u8)scratch[0x241] % 24u)];
            markers[1].x = (s16)player->z / 305 + 125;
            markers[1].y = (s16)player->x / 361 - 86;
        }
    }
}
