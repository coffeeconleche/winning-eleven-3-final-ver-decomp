#include "common.h"

s32 func_8018E994(s16 *current, s32 target, s32 step) {
    /* Keep raw arguments separate from their narrowed working values. */
    register s32 complete __asm__("$8") = 1;
    register s32 original_step __asm__("$7") = step;
    register s32 movement __asm__("$6");
    register s32 original_target __asm__("$9");
    register s32 distance __asm__("$2");
    register s32 magnitude __asm__("$3");
    u32 next;

    __asm__ volatile ("" : "=r"(original_step)
                      : "0"(original_step), "r"(complete));
    movement = (s16)step;
    if (movement != 0) {
        original_target = target;
        __asm__ volatile ("" : "=r"(original_target)
                          : "0"(original_target), "r"(movement));
        /* Split sign extension around the signed load, preserving its schedule. */
        distance = (s32)((u32)target << 16);
        __asm__ volatile ("" : "=r"(distance) : "0"(distance));
        magnitude = *current;
        distance >>= 16;
        __asm__ volatile ("" : : "r"(distance), "r"(magnitude));
        distance -= magnitude;
        if (distance < 0) {
            movement = -movement;
        }
        /* Preserve the original independent sign checks for step and distance. */
        __asm__ volatile ("" : "=r"(distance) : "0"(distance));
        magnitude = distance < 0 ? -distance : distance;
        /* Retain the original signed threshold, even for negative steps. */
        __asm__ volatile ("" : "=r"(original_step) : "0"(original_step));
        distance = (s16)original_step;
        magnitude = magnitude < distance;
        /* Preserve comparison registers and the independent completion clear. */
        __asm__ volatile ("" : : "r"(distance), "r"(magnitude));
        if (!magnitude) {
            __asm__ volatile ("" : "=r"(magnitude) : "0"(magnitude));
            /* The step path rereads unsigned bits instead of reusing the signed load. */
            next = *(volatile u16 *)current;
            complete = 0;
            *current = next + movement;
        } else {
            *current = original_target;
        }
    }
    return complete;
}
