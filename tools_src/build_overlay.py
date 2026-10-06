#!/usr/bin/env python3
"""Build and byte-verify a dynamically confirmed runtime overlay."""

from __future__ import annotations

import argparse
import hashlib
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

from dos_cc1 import compile_dos

ROOT = Path(__file__).resolve().parent.parent

CPP_FLAGS = [
    "-undef",
    "-D__GNUC__=2",
    "-lang-c",
    "-Dmips",
    "-D__mips__",
    "-D__mips",
    "-Dpsx",
    "-D__psx__",
    "-D__psx",
    "-D_PSYQ",
    "-D__EXTENSIONS__",
    "-D_MIPSEL",
    "-D__CHAR_UNSIGNED__",
    "-D_LANGUAGE_C",
    "-DLANGUAGE_C",
    "-Iinclude",
]

PER_FUNC_COMPILERS: dict[str, str] = {
    "func_801211E8": "gcc272-dos",
    "func_801A9C54": "gcc272-dos",
    "func_801B0B9C": "gcc272-dos",
    "func_801CB570": "gcc272-dos",
    "func_80121670": "gcc272-dos",
    "func_8018F93C": "gcc272-dos",
    "func_801B45CC": "gcc272-dos",
    "func_8018D21C": "gcc272-dos",
    "func_801B06E0": "gcc272-dos",
    "func_80195DE0": "gcc272-dos",
    "func_801AC0B4": "gcc272-dos",
    "func_8018CE40": "gcc272-dos",
    "func_801AB910": "gcc272-dos",
    "func_801C3294": "gcc272-dos",
    "func_80196FE8": "gcc272-dos",
    "func_801A49D4": "gcc272-dos",
    "func_801A39E4": "gcc272-dos",
    "func_801AF938": "gcc272-dos",
    "func_80199010": "gcc272-dos",
    "func_8018A7C4": "gcc272-dos",
    "func_801B1224": "gcc272-dos",
    "func_801C86B4": "gcc272-dos",
    "func_80189720": "gcc272-dos",
    "func_801A82F8": "gcc272-dos",
    "func_801AC9D8": "gcc272-dos",
    "func_801C52E4": "gcc272-dos",
    "func_801B347C": "gcc272-dos",
    "func_801CFF38": "gcc272-dos",
    "func_801D0C80": "gcc272-dos",
    "func_801A4DA8": "gcc272-dos",
    "func_801D03EC": "gcc272-dos",
    "func_801C88BC": "gcc272-dos",
    "func_801A2610": "gcc272-dos",
    "func_8019C85C": "gcc272-dos",
    "func_80194790": "gcc272-dos",
    "func_801A89F0": "gcc272-dos",
    "func_80120698": "gcc272-dos",
    "func_801BD3F0": "gcc272-dos",
    "func_801BCCD8": "gcc272-dos",
    "func_801A85B0": "gcc272-dos",
    "func_801AE020": "gcc272-dos",
    "func_801C19EC": "gcc272-dos",
    "func_8019DB3C": "gcc272-dos",
    "func_801A8F00": "gcc272-dos",
    "func_80121A2C": "gcc272-dos",
    "func_80120314": "gcc272-dos",
    "func_801960E0": "gcc272-dos",
    "func_801BFCDC": "gcc272-dos",
    "func_801C9A18": "gcc272-dos",
    "func_801CADC4": "gcc272-dos",
    "func_8018F380": "gcc272-dos",
    "func_801A6AE4": "gcc272-dos",
    "func_801C1208": "gcc272-dos",
    "func_801A5188": "gcc272-dos",
    "func_8018A3A8": "gcc272-dos",
    "func_8018BB0C": "gcc272-dos",
    "func_801B7804": "gcc272-dos",
    "func_801BDB74": "gcc272-dos",
    "func_801B50F8": "gcc272-dos",
    "func_801A2198": "gcc272-dos",
    "func_801A77A0": "gcc272-dos",
    "func_80189DB4": "gcc272-dos",
    "func_8018FB8C": "gcc272-dos",
    "func_8018BE20": "gcc272-dos",
    "func_8018C898": "gcc272-dos",
    "func_8018AE8C": "gcc272-dos",
    "func_8018CCB4": "gcc272-dos",
    "func_8018CA38": "gcc272-dos",
    "func_8018CB78": "gcc272-dos",
    "func_8018A6C0": "gcc272-dos",
    "func_8018E8D0": "gcc272-dos",
    "func_8018EB54": "gcc272-dos",
    "func_8018EA5C": "gcc272-dos",
    "func_8018F8D4": "gcc272-dos",
    "func_8018EB00": "gcc272-dos",
    "func_8018E490": "gcc272-dos",
    "func_8018F88C": "gcc272-dos",
    "func_8012153C": "gcc272-dos",
    "func_8012059C": "gcc272-dos",
    "func_80120974": "gcc272-dos",
    "func_8012199C": "gcc272-dos",
    "func_8012051C": "gcc272-dos",
    "func_801CBAB8": "gcc272-dos",
    "func_801C4FE0": "gcc272-dos",
    "func_801BABC0": "gcc272-dos",
    "func_80193990": "gcc272-dos",
    "func_8019D23C": "gcc272-dos",
    "func_801C59C4": "gcc272-dos",
    "func_801B9144": "gcc272-dos",
    "func_801B8028": "gcc272-dos",
    "func_801975B0": "gcc272-dos",
    "func_801BA15C": "gcc272-dos",
    "func_80194394": "gcc272-dos",
    "func_801CFB84": "gcc272-dos",
    "func_8018DF30": "gcc272-dos",
    "func_801A2CA0": "gcc272-dos",
    "func_8018DB58": "gcc272-dos",
    "func_801A735C": "gcc272-dos",
    "func_801B7D44": "gcc272-dos",
    "func_801BA8EC": "gcc272-dos",
    "func_801B57A0": "gcc272-dos",
    "func_801AB290": "gcc272-dos",
    "func_8018E720": "gcc272-dos",
    "func_801A5CFC": "gcc272-dos",
    "func_80197200": "gcc272-dos",
    "func_801A5764": "gcc272-dos",
    "func_801BF0F4": "gcc272-dos",
    "func_801A5508": "gcc272-dos",
    "func_801BFEDC": "gcc272-dos",
    "func_801B190C": "gcc272-dos",
    "func_801CB37C": "gcc272-dos",
    "func_801CF760": "gcc272-dos",
    "func_80191E80": "gcc272-dos",
    "func_801B7B00": "gcc272-dos",
    "func_801C4BF4": "gcc272-dos",
    "func_8019D904": "gcc272-dos",
    "func_801BD6EC": "gcc272-dos",
    "func_801C3888": "gcc272-dos",
    "func_801C2B50": "gcc272-dos",
    "func_8019A804": "gcc272-dos",
    "func_801C3A6C": "gcc272-dos",
    "func_801AB510": "gcc272-dos",
    "func_801A7188": "gcc272-dos",
    "func_801C84E8": "gcc272-dos",
    "func_8019689C": "gcc272-dos",
    "func_801B8814": "gcc272-dos",
    "func_801A8848": "gcc272-dos",
    "func_801D0A20": "gcc272-dos",
    "func_801BFB58": "gcc272-dos",
    "func_80196C98": "gcc272-dos",
    "func_801A93CC": "gcc272-dos",
    "func_801B5644": "gcc272-dos",
    "func_801C3150": "gcc272-dos",
    "func_801C588C": "gcc272-dos",
    "func_801BCBA8": "gcc272-dos",
    "func_801C20F0": "gcc272-dos",
    "func_801BD8E8": "gcc272-dos",
    "func_801AED90": "gcc272-dos",
    "func_801D0820": "gcc272-dos",
    "func_801CF6A8": "gcc272-dos",
    "func_801C6250": "gcc272-dos",
    "func_801BD2F8": "gcc272-dos",
    "func_801BD6A0": "gcc272-dos",
    "func_801BE744": "gcc272-dos",
    "func_801AA524": "gcc272-dos",
    "func_801AFF1C": "gcc272-dos",
    "func_801AB6E8": "gcc272-dos",
    "func_801A5B88": "gcc272-dos",
    "func_801A5A14": "gcc272-dos",
    "func_801B015C": "gcc272-dos",
    "func_801C49F0": "gcc272-dos",
    "func_801CAAFC": "gcc272-dos",
    "func_801CB14C": "gcc272-dos",
    "func_801BA614": "gcc272-dos",
    "func_801A8124": "gcc272-dos",
    "func_8019DDA8": "gcc272-dos",
    "func_80192174": "gcc272-dos",
    "func_801C3EBC": "gcc272-dos",
    "func_801BB200": "gcc272-dos",
    "func_801B53DC": "gcc272-dos",
    "func_801BD9F8": "gcc272-dos",
    "func_801A2B3C": "gcc272-dos",
    "func_801BFD94": "gcc272-dos",
    "func_801A4C6C": "gcc272-dos",
    "func_801D08F0": "gcc272-dos",
    "func_801C576C": "gcc272-dos",
    "func_801C2A3C": "gcc272-dos",
    "func_801AEE80": "gcc272-dos",
    "func_801D0BB0": "gcc272-dos",
    "func_801BB140": "gcc272-dos",
    "func_801BA564": "gcc272-dos",
    "func_801A84C8": "gcc272-dos",
    "func_801C8CB4": "gcc272-dos",
    "func_801CB334": "gcc272-dos",
    "func_801BC968": "gcc272-dos",
    "func_801A5FA4": "gcc272-dos",
    "func_80196A60": "gcc272-dos",
    "func_801BE77C": "gcc272-dos",
    "func_801979D8": "gcc272-dos",
    "func_801C4DE8": "gcc272-dos",
    "func_80198E20": "gcc272-dos",
    "func_8019C43C": "gcc272-dos",
    "func_801C0808": "gcc272-dos",
    "func_801CAF78": "gcc272-dos",
    "func_801C16DC": "gcc272-dos",
    "func_80196E1C": "gcc272-dos",
    "func_801A6FC8": "gcc272-dos",
    "func_8019CB54": "gcc272-dos",
    "func_8019D75C": "gcc272-dos",
    "func_8019E25C": "gcc272-dos",
    "func_801BAFBC": "gcc272-dos",
    "func_801A9A08": "gcc272-dos",
    "func_801A2F90": "gcc272-dos",
    "func_801CBFE4": "gcc272-dos",
    "func_801C18AC": "gcc272-dos",
    "func_801D110C": "gcc272-dos",
    "func_801C98F8": "gcc272-dos",
    "func_801BF35C": "gcc272-dos",
    "func_801BA7EC": "gcc272-dos",
    "func_801CACF0": "gcc272-dos",
    "func_801ADF5C": "gcc272-dos",
    "func_801BD368": "gcc272-dos",
    "func_801AA778": "gcc272-dos",
    "func_801CF918": "gcc272-dos",
    "func_801AECB4": "gcc272-dos",
    "func_801AEBF8": "gcc272-dos",
    "func_801AA40C": "gcc272-dos",
    "func_801A9B88": "gcc272-dos",
    "func_801A92A4": "gcc272-dos",
    "func_801AF110": "gcc272-dos",
    "func_801B0368": "gcc272-dos",
    "func_801B0598": "gcc272-dos",
    "func_801B04B4": "gcc272-dos",
    "func_801B1168": "gcc272-dos",
    "func_801A29FC": "gcc272-dos",
    "func_801A98F0": "gcc272-dos",
    "func_801A97FC": "gcc272-dos",
    "func_801A76A8": "gcc272-dos",
    "func_801A62EC": "gcc272-dos",
    "func_801A9168": "gcc272-dos",
    "func_801A8E08": "gcc272-dos",
    "func_801A8CD0": "gcc272-dos",
    "func_8019C73C": "gcc272-dos",
    "func_8019C61C": "gcc272-dos",
    "func_801C1CD4": "gcc272-dos",
    "func_801B5560": "gcc272-dos",
    "func_801B500C": "gcc272-dos",
    "func_801B8FF8": "gcc272-dos",
    "func_801B8F38": "gcc272-dos",
    "func_8019DF70": "gcc272-dos",
    "func_8019E09C": "gcc272-dos",
    "func_80197470": "gcc272-dos",
    "func_80199E8C": "gcc272-dos",
    "func_80192848": "gcc272-dos",
    "func_8019A168": "gcc272-dos",
    "func_8019A700": "gcc272-dos",
    "func_8019A510": "gcc272-dos",
    "func_8019A3FC": "gcc272-dos",
    "func_80194A74": "gcc272-dos",
    "func_80193FB4": "gcc272-dos",
    "func_80193884": "gcc272-dos",
    "func_80192720": "gcc272-dos",
    "func_801B8D70": "gcc272-dos",
    "func_801B85E4": "gcc272-dos",
    "func_801B8708": "gcc272-dos",
    "func_801B84D8": "gcc272-dos",
    "func_8019A340": "gcc272-dos",
    "func_8019A2A0": "gcc272-dos",
    "func_8019A0AC": "gcc272-dos",
    "func_80199FDC": "gcc272-dos",
    "func_80196378": "gcc272-dos",
    "func_801941E0": "gcc272-dos",
    "func_801940EC": "gcc272-dos",
    "func_801942E0": "gcc272-dos",
    "func_80192608": "gcc272-dos",
    "func_80192334": "gcc272-dos",
    "func_801B3D20": "gcc272-dos",
    "func_801B8AB8": "gcc272-dos",
    "func_801B8BB0": "gcc272-dos",
    "func_801B8CD4": "gcc272-dos",
    "func_801B8A20": "gcc272-dos",
    "func_801AFECC": "gcc272-dos",
    "func_801B89D0": "gcc272-dos",
    "func_801B9100": "gcc272-dos",
    "func_80193EA0": "gcc272-dos",
    "func_801929B4": "gcc272-dos",
    "func_801924A0": "gcc272-dos",
    "func_80193F18": "gcc272-dos",
    "func_80197BE0": "gcc272-dos",
    "func_801962E4": "gcc272-dos",
    "func_801B8C68": "gcc272-dos",
    "func_801B8450": "gcc272-dos",
    "func_801B4FA8": "gcc272-dos",
    "func_801C1C5C": "gcc272-dos",
    "func_801C20A8": "gcc272-dos",
    "func_801C2064": "gcc272-dos",
    "func_801A8540": "gcc272-dos",
    "func_801A7A4C": "gcc272-dos",
    "func_801A4908": "gcc272-dos",
    "func_801964F8": "gcc272-dos",
    "func_8019645C": "gcc272-dos",
    "func_80196800": "gcc272-dos",
    "func_80192428": "gcc272-dos",
    "func_80191E44": "gcc272-dos",
    "func_801926EC": "gcc272-dos",
    "func_80192594": "gcc272-dos",
    "func_80192520": "gcc272-dos",
    "func_80191DF0": "gcc272-dos",
    "func_8019E1D0": "gcc272-dos",
    "func_8019E3EC": "gcc272-dos",
    "func_8019E454": "gcc272-dos",
    "func_801A4948": "gcc272-dos",
    "func_801A2474": "gcc272-dos",
    "func_8018E69C": "gcc272-dos",
    "func_8019E580": "gcc272-dos",
    "func_8019E4D8": "gcc272-dos",
    "func_8019E494": "gcc272-dos",
    "func_8018EAF4": "gcc272-dos",
    "func_8018EA8C": "gcc272-dos",
    "func_8018EA08": "gcc272-dos",
    "func_801A3D3C": "gcc272-dos",
    "func_801A3588": "gcc272-dos",
    "func_801A63A8": "gcc272-dos",
    "func_8019A62C": "gcc272-dos",
    "func_8018EC60": "gcc272-dos",
    "func_8018E538": "gcc272-dos",
    "func_801A372C": "gcc272-dos",
    "func_801A3EE8": "gcc272-dos",
    "func_801A36D0": "gcc272-dos",
    "func_8018E994": "gcc272-dos",
    "func_8018E640": "gcc272-dos",
    "func_8018E5EC": "gcc272-dos",
    "func_8018E3B4": "gcc272-dos",
    "func_8018E2C0": "gcc272-dos",
    "func_8018DE7C": "gcc272-dos",
    "func_801A24E4": "gcc272-dos",
    "func_801A346C": "gcc272-dos",
    "func_8018F188": "gcc272-dos",
}

# Original read-only table ownership, excluding any trailing padding words.
# Compiler-generated words replace only this table's entries at its established
# location. Code, targets and surrounding retail rodata are never patched.
JumpTableSlot = tuple[str, int]
PER_FUNC_JUMP_TABLES: dict[str, JumpTableSlot | tuple[JumpTableSlot, ...]] = {
    "func_8018D21C": (("jtbl_80189374", 49), ("jtbl_8018943C", 6), ("jtbl_80189454", 6)),
    "func_801B06E0": ("jtbl_8018A5B4", 31),
    "func_801B0B9C": ("jtbl_8018A634", 103),
    "func_801CB570": ("jtbl_8018D9D4", 7),
    "func_801B1224": ("jtbl_8018A7D4", 62),
    "func_8018A7C4": (("jtbl_801890F4", 65), ("jtbl_801891FC", 6), ("jtbl_80189214", 11)),
    "func_80199010": (("jtbl_80189B5C", 12), ("jtbl_80189B8C", 7)),
    "func_801C3294": ("jtbl_8018BDE4", 6),
    "func_80189720": (("jtbl_801895D8", 39), ("jtbl_80189678", 42)),
    "func_801A2610": ("jtbl_8018A1C0", 6),
    "func_801A85B0": ("jtbl_8018A298", 10),
    "func_801960E0": ("jtbl_8018981C", 5),
    "func_801CBAB8": ("jtbl_8018D9F0", 5),
    "func_80194394": ("jtbl_801894FC", 138),
    "func_8018DF30": ("jtbl_80188F78", 7),
    "func_801B57A0": ("jtbl_8018AD84", 8),
    "func_801A5CFC": ("jtbl_8018A208", 5),
    "func_801BFEDC": ("jtbl_8018B904", 5),
    "func_801B190C": ("jtbl_8018A8CC", 31),
    "func_801CB37C": (("jtbl_8018D9A4", 6), ("jtbl_8018D9BC", 6)),
    "func_801CF760": ("jtbl_8018DAE0", 6),
    "func_801C1208": ("jtbl_8018BAAC", 206),
    "func_8018BB0C": ("jtbl_801892E4", 8),
    "func_801B7804": ("jtbl_8018B21C", 21),
    "func_8018BE20": ("jtbl_80189304", 5),
    "func_8018A6C0": ("jtbl_801890DC", 5),
    "func_801C0808": ("jtbl_8018B9C4", 5),
    "func_801A5B88": ("jtbl_8018A1F0", 5),
    "func_801A5A14": ("jtbl_8018A1D8", 5),
    "func_801AEBF8": ("jtbl_8018A59C", 6),
    "func_801B5560": ("jtbl_8018AD6C", 6),
    "func_8019A510": ("jtbl_80189CC4", 6),
    "func_8019A3FC": ("jtbl_80189CAC", 6),
    "func_80192720": ("jtbl_80189440", 5),
    "func_8018E69C": ("jtbl_80188F94", 5),
    "func_8019E3EC": ("jtbl_80189FD8", 6),
    "func_8019A804": ("jtbl_80189CDC", 52),
}

PER_FUNC_CC1_FLAGS = {
    "func_801B45CC": ["-quiet", "-O2", "-G0"],
    "func_8018D21C": ["-quiet", "-O2", "-G0"],
    "func_801B06E0": ["-quiet", "-O2", "-G0"],
    "func_80195DE0": ["-quiet", "-O2", "-G0"],
    "func_801AB910": ["-quiet", "-O2", "-G0"],
    "func_801C3294": ["-quiet", "-O2", "-G0"],
    "func_801B1224": ["-quiet", "-O2", "-G0", "-fno-cse-skip-blocks"],
    "func_801BFCDC": ["-quiet", "-O2", "-G0", "-fno-cse-skip-blocks"],
    "func_801C9A18": ["-quiet", "-O2", "-G0"],
    "func_801CADC4": ["-quiet", "-O2", "-G0"],
    "func_8018F380": ["-quiet", "-O2", "-G0"],
    "func_801A6AE4": ["-quiet", "-O2", "-G0"],
    "func_801C1208": ["-quiet", "-O2", "-G0"],
    "func_801A5188": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8018A3A8": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018BB0C": ["-quiet", "-O2", "-G0"],
    "func_801B7804": ["-quiet", "-O2", "-G0"],
    "func_801BDB74": ["-quiet", "-O2", "-G0"],
    "func_801B50F8": ["-quiet", "-O2", "-G0"],
    "func_801A2198": ["-quiet", "-O2", "-G0"],
    "func_801A77A0": ["-quiet", "-O2", "-G0"],
    "func_80189DB4": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018FB8C": ["-quiet", "-O2", "-G0"],
    "func_8018BE20": ["-quiet", "-O2", "-G0", "-fno-thread-jumps"],
    "func_8018C898": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018AE8C": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018CCB4": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8018CA38": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8018CB78": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8018A6C0": ["-quiet", "-O2", "-G0", "-fforce-addr"],
    "func_8018E8D0": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018CE40": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_8018E490": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_801A2CA0": ["-quiet", "-O2", "-G0"],
    "func_8018DB58": ["-quiet", "-O2", "-G0"],
    "func_801A735C": ["-quiet", "-O2", "-G0"],
    "func_801B7D44": ["-quiet", "-O2", "-G0"],
    "func_801BA8EC": ["-quiet", "-O2", "-G0"],
    "func_801B57A0": ["-quiet", "-O2", "-G0"],
    "func_801AB290": ["-quiet", "-O2", "-G0"],
    "func_8018E720": ["-quiet", "-O2", "-G0"],
    "func_801A5CFC": ["-quiet", "-O2", "-G0"],
    "func_80197200": ["-quiet", "-O2", "-G0"],
    "func_801A5764": ["-quiet", "-O2", "-G0"],
    "func_801BF0F4": ["-quiet", "-O2", "-G0"],
    "func_801A5508": ["-quiet", "-O2", "-G0"],
    "func_801BFEDC": ["-quiet", "-O2", "-G0"],
    "func_801B190C": ["-quiet", "-O2", "-G0"],
    "func_801CB37C": ["-quiet", "-O2", "-G0"],
    "func_801CF760": ["-quiet", "-O2", "-G0"],
    "func_80191E80": ["-quiet", "-O2", "-G0"],
    "func_801B7B00": ["-quiet", "-O2", "-G0"],
    "func_801C4BF4": ["-quiet", "-O2", "-G0"],
    "func_8019D904": ["-quiet", "-O2", "-G0"],
    "func_801C96DC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801BD6EC": ["-quiet", "-O2", "-G0"],
    "func_801C3888": ["-quiet", "-O2", "-G0"],
    "func_801AB510": ["-quiet", "-O2", "-G0"],
    "func_801A7188": ["-quiet", "-O2", "-G0"],
    "func_801C84E8": ["-quiet", "-O2", "-G0"],
    "func_8019689C": ["-quiet", "-O2", "-G0"],
    "func_801B8814": ["-quiet", "-O2", "-G0"],
    "func_801A8848": ["-quiet", "-O2", "-G0"],
    "func_801D0A20": ["-quiet", "-O2", "-G0"],
    "func_801BFB58": ["-quiet", "-O2", "-G0"],
    "func_80196C98": ["-quiet", "-O2", "-G0"],
    "func_801A93CC": ["-quiet", "-O2", "-G0"],
    "func_801B5644": ["-quiet", "-O2", "-G0"],
    "func_801C3150": ["-quiet", "-O2", "-G0"],
    "func_801C588C": ["-quiet", "-O2", "-G0"],
    "func_801BCBA8": ["-quiet", "-O2", "-G0"],
    "func_801C20F0": ["-quiet", "-O2", "-G0"],
    "func_801BD8E8": ["-quiet", "-O2", "-G0"],
    "func_801AED90": ["-quiet", "-O2", "-G0"],
    "func_801D0820": ["-quiet", "-O2", "-G0"],
    "func_801CF6A8": ["-quiet", "-O2", "-G0"],
    "func_801C6250": ["-quiet", "-O2", "-G0"],
    "func_801BD2F8": ["-quiet", "-O2", "-G0"],
    "func_801BD6A0": ["-quiet", "-O2", "-G0"],
    "func_801BE744": ["-quiet", "-O2", "-G0"],
    "func_801AA524": ["-quiet", "-O2", "-G0"],
    "func_801AFF1C": ["-quiet", "-O2", "-G0"],
    "func_801AB6E8": ["-quiet", "-O2", "-G0"],
    "func_801A5B88": ["-quiet", "-O2", "-G0"],
    "func_801A5A14": ["-quiet", "-O2", "-G0"],
    "func_801B015C": ["-quiet", "-O2", "-G0"],
    "func_801C49F0": ["-quiet", "-O2", "-G0"],
    "func_801CAAFC": ["-quiet", "-O2", "-G0"],
    "func_801CB14C": ["-quiet", "-O2", "-G0"],
    "func_801BA614": ["-quiet", "-O2", "-G0"],
    "func_801A8124": ["-quiet", "-O2", "-G0"],
    "func_8019DDA8": ["-quiet", "-O2", "-G0"],
    "func_80192174": ["-quiet", "-O2", "-G0"],
    "func_801C3EBC": ["-quiet", "-O2", "-G0"],
    "func_801BB200": ["-quiet", "-O2", "-G0"],
    "func_801B53DC": ["-quiet", "-O2", "-G0"],
    "func_801BD9F8": ["-quiet", "-O2", "-G0"],
    "func_801A2B3C": ["-quiet", "-O2", "-G0"],
    "func_801BFD94": ["-quiet", "-O2", "-G0"],
    "func_801A4C6C": ["-quiet", "-O2", "-G0"],
    "func_801D08F0": ["-quiet", "-O2", "-G0"],
    "func_801C576C": ["-quiet", "-O2", "-G0"],
    "func_801C2A3C": ["-quiet", "-O2", "-G0"],
    "func_801AEE80": ["-quiet", "-O2", "-G0"],
    "func_801D0BB0": ["-quiet", "-O2", "-G0"],
    "func_801BB140": ["-quiet", "-O2", "-G0"],
    "func_801BA564": ["-quiet", "-O2", "-G0"],
    "func_801A84C8": ["-quiet", "-O2", "-G0"],
    "func_801C8CB4": ["-quiet", "-O2", "-G0"],
    "func_801CB334": ["-quiet", "-O2", "-G0"],
    "func_801BC968": ["-quiet", "-O2", "-G0"],
    "func_801A5FA4": ["-quiet", "-O2", "-G0"],
    "func_80196A60": ["-quiet", "-O2", "-G0", "-fno-cse-follow-jumps"],
    "func_801BE77C": ["-quiet", "-O2", "-G0"],
    "func_801979D8": ["-quiet", "-O2", "-G0"],
    "func_801C4DE8": ["-quiet", "-O2", "-G0"],
    "func_80198E20": ["-quiet", "-O2", "-G0"],
    "func_8019C43C": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_801C0808": ["-quiet", "-O2", "-G0"],
    "func_801CAF78": ["-quiet", "-O2", "-G0"],
    "func_801C16DC": ["-quiet", "-O2", "-G0"],
    "func_80196E1C": ["-quiet", "-O2", "-G0"],
    "func_801A6FC8": ["-quiet", "-O2", "-G0"],
    "func_8019CB54": ["-quiet", "-O2", "-G0"],
    "func_8019D75C": ["-quiet", "-O2", "-G0"],
    "func_8019E25C": ["-quiet", "-O2", "-G0"],
    "func_801BAFBC": ["-quiet", "-O2", "-G0"],
    "func_801A9A08": ["-quiet", "-O2", "-G0"],
    "func_801A2F90": ["-quiet", "-O2", "-G0"],
    "func_801CBFE4": ["-quiet", "-O2", "-G0"],
    "func_801C18AC": ["-quiet", "-O2", "-G0"],
    "func_801D110C": ["-quiet", "-O2", "-G0"],
    "func_801C98F8": ["-quiet", "-O2", "-G0", "-fno-cse-skip-blocks"],
    "func_801BF35C": ["-quiet", "-O2", "-G0"],
    "func_801BA7EC": ["-quiet", "-O2", "-G0"],
    "func_801CACF0": ["-quiet", "-O2", "-G0"],
    "func_801ADF5C": ["-quiet", "-O2", "-G0"],
    "func_801BD368": ["-quiet", "-O2", "-G0"],
    "func_801AA778": ["-quiet", "-O2", "-G0"],
    "func_801CF918": ["-quiet", "-O2", "-G0"],
    # Keep byte and halfword accesses on the original single six-byte cursor.
    "func_801AECB4": ["-quiet", "-O2", "-G0", "-fno-strength-reduce"],
    "func_801AEBF8": ["-quiet", "-O2", "-G0"],
    "func_801AA40C": ["-quiet", "-O2", "-G0"],
    "func_801A9B88": ["-quiet", "-O2", "-G0"],
    "func_801A92A4": ["-quiet", "-O2", "-G0"],
    "func_801AF110": ["-quiet", "-O2", "-G0"],
    "func_801B0368": ["-quiet", "-O2", "-G0"],
    "func_801B0598": ["-quiet", "-O2", "-G0"],
    "func_801B04B4": ["-quiet", "-O2", "-G0"],
    "func_801B1168": ["-quiet", "-O2", "-G0"],
    "func_801A29FC": ["-quiet", "-O2", "-G0"],
    "func_801A98F0": ["-quiet", "-O2", "-G0"],
    "func_801A97FC": ["-quiet", "-O2", "-G0"],
    "func_801A76A8": ["-quiet", "-O2", "-G0"],
    "func_801A62EC": ["-quiet", "-O2", "-G0"],
    "func_801A9168": ["-quiet", "-O2", "-G0"],
    "func_801A8E08": ["-quiet", "-O2", "-G0"],
    "func_801A8CD0": ["-quiet", "-O2", "-G0"],
    "func_8019C73C": ["-quiet", "-O2", "-G0"],
    "func_8019C61C": ["-quiet", "-O2", "-G0"],
    "func_801C1CD4": ["-quiet", "-O2", "-G0"],
    "func_801B5560": ["-quiet", "-O2", "-G0"],
    "func_801B500C": ["-quiet", "-O2", "-G0"],
    "func_801B8FF8": ["-quiet", "-O2", "-G0"],
    "func_801B8F38": ["-quiet", "-O2", "-G0"],
    "func_8019DF70": ["-quiet", "-O2", "-G0"],
    "func_8019E09C": ["-quiet", "-O2", "-G0"],
    "func_80197470": ["-quiet", "-O2", "-G0"],
    "func_80199E8C": ["-quiet", "-O2", "-G0"],
    "func_80192848": ["-quiet", "-O2", "-G0"],
    "func_8019A168": ["-quiet", "-O2", "-G0"],
    "func_8019A700": ["-quiet", "-O2", "-G0"],
    "func_8019A510": ["-quiet", "-O2", "-G0"],
    "func_8019A3FC": ["-quiet", "-O2", "-G0"],
    "func_80194A74": ["-quiet", "-O2", "-G0"],
    "func_80193FB4": ["-quiet", "-O2", "-G0"],
    "func_80193884": ["-quiet", "-O2", "-G0"],
    "func_80192720": ["-quiet", "-O2", "-G0"],
    "func_801B8D70": ["-quiet", "-O2", "-G0"],
    "func_801B85E4": ["-quiet", "-O2", "-G0"],
    "func_801B8708": ["-quiet", "-O2", "-G0"],
    "func_801B84D8": ["-quiet", "-O2", "-G0"],
    "func_8019A340": ["-quiet", "-O2", "-G0"],
    "func_8019A2A0": ["-quiet", "-O2", "-G0"],
    "func_8019A0AC": ["-quiet", "-O2", "-G0"],
    "func_80199FDC": ["-quiet", "-O2", "-G0"],
    "func_80196378": ["-quiet", "-O2", "-G0"],
    "func_801941E0": ["-quiet", "-O2", "-G0"],
    "func_801940EC": ["-quiet", "-O2", "-G0"],
    "func_801942E0": ["-quiet", "-O2", "-G0"],
    "func_80192608": ["-quiet", "-O2", "-G0"],
    "func_80192334": ["-quiet", "-O2", "-G0"],
    "func_801B3D20": ["-quiet", "-O2", "-G0"],
    "func_801B8AB8": ["-quiet", "-O2", "-G0"],
    "func_801B8BB0": ["-quiet", "-O2", "-G0"],
    "func_801B8CD4": ["-quiet", "-O2", "-G0"],
    "func_801B8A20": ["-quiet", "-O2", "-G0"],
    "func_801AFECC": ["-quiet", "-O2", "-G0"],
    "func_801B89D0": ["-quiet", "-O2", "-G0"],
    "func_801B9100": ["-quiet", "-O2", "-G0"],
    "func_80193EA0": ["-quiet", "-O2", "-G0"],
    "func_801929B4": ["-quiet", "-O2", "-G0"],
    "func_801924A0": ["-quiet", "-O2", "-G0"],
    "func_80193F18": ["-quiet", "-O2", "-G0"],
    "func_80197BE0": ["-quiet", "-O2", "-G0"],
    "func_801962E4": ["-quiet", "-O2", "-G0"],
    "func_801B8C68": ["-quiet", "-O2", "-G0"],
    "func_801B8450": ["-quiet", "-O2", "-G0"],
    "func_801B4FA8": ["-quiet", "-O2", "-G0"],
    "func_801C1C5C": ["-quiet", "-O2", "-G0"],
    "func_801C20A8": ["-quiet", "-O2", "-G0"],
    "func_801C2064": ["-quiet", "-O2", "-G0"],
    "func_801A8540": ["-quiet", "-O2", "-G0"],
    "func_801A7A4C": ["-quiet", "-O2", "-G0"],
    "func_801A4908": ["-quiet", "-O2", "-G0"],
    "func_801964F8": ["-quiet", "-O2", "-G0"],
    "func_8019645C": ["-quiet", "-O2", "-G0"],
    "func_80196800": ["-quiet", "-O2", "-G0"],
    "func_80192428": ["-quiet", "-O2", "-G0"],
    "func_80191E44": ["-quiet", "-O2", "-G0"],
    "func_801926EC": ["-quiet", "-O2", "-G0"],
    "func_80192594": ["-quiet", "-O2", "-G0"],
    "func_80192520": ["-quiet", "-O2", "-G0"],
    "func_80191DF0": ["-quiet", "-O2", "-G0"],
    "func_8019E1D0": ["-quiet", "-O2", "-G0"],
    "func_8019E3EC": ["-quiet", "-O2", "-G0"],
    "func_8019E454": ["-quiet", "-O2", "-G0"],
    "func_801A4948": ["-quiet", "-O2", "-G0"],
    "func_801A2474": ["-quiet", "-O2", "-G0"],
    "func_8018E69C": ["-quiet", "-O2", "-G0"],
    # Preserve descriptor byte load/store order before delay scheduling.
    "func_8019E580": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8019E4D8": ["-quiet", "-O2", "-G0"],
    "func_8019E494": ["-quiet", "-O2", "-G0"],
    "func_8018EAF4": ["-quiet", "-O2", "-G0"],
    "func_8018EA8C": ["-quiet", "-O2", "-G0"],
    "func_8018EA08": ["-quiet", "-O2", "-G0"],
    "func_801A3D3C": ["-quiet", "-O2", "-G0"],
    "func_801A3588": ["-quiet", "-O2", "-G0"],
    # Retain interleaved halfword loads/stores rather than hoisting both loads.
    "func_801A63A8": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_8019A62C": ["-quiet", "-O2", "-G0"],
    "func_8018EC60": ["-quiet", "-O2", "-G0"],
    "func_8018E538": ["-quiet", "-O2", "-G0"],
    # Preserve status reload/store and cursor setup order before delay scheduling.
    "func_801A372C": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_801A3EE8": ["-quiet", "-O2", "-G0"],
    "func_801A36D0": ["-quiet", "-O2", "-G0"],
    "func_8018E994": ["-quiet", "-O2", "-G0"],
    "func_8018E640": ["-quiet", "-O2", "-G0"],
    "func_8018E5EC": ["-quiet", "-O2", "-G0"],
    "func_8018E3B4": ["-quiet", "-O2", "-G0"],
    "func_8018E2C0": ["-quiet", "-O2", "-G0"],
    "func_8018DE7C": ["-quiet", "-O2", "-G0"],
    # Keep selector/counter setup order while retaining branch-delay scheduling.
    "func_801A24E4": ["-quiet", "-O2", "-G0", "-fno-schedule-insns"],
    "func_801A346C": ["-quiet", "-O2", "-G0"],
    "func_8018F188": ["-quiet", "-O2", "-G0"],
    "func_801A3930": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9540": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A61FC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    # Keep the common scratchpad base while retaining large base-relative accesses.
    "func_801CF964": ["-quiet", "-O2", "-G0", "-mno-split-addresses", "-fforce-addr"],
    "func_801AF198": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E4F0": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E514": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E5B8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018F2F8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A24AC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9874": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801BFB24": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EBF4": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EC18": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EC3C": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EA04": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801AEF70": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801AEFE0": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9614": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801B8EB8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E4AC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EBA4": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
}

OVERLAYS = {
    "SELSND": {
        "expected": ROOT / "extracted" / "modules" / "SELSND.BIN",
        "sha1": "528b4b8a91d4cc7cc309dde876a19858eb3099a3",
        "rodata": ROOT / "asm" / "overlays" / "selsnd" / "data" / "0.rodata.s",
        "text": ROOT
        / "asm"
        / "overlays"
        / "selsnd"
        / "nonmatchings"
        / "18"
        / "func_80138018.s",
        "data": ROOT / "asm" / "overlays" / "selsnd" / "data" / "E9C.data.s",
        "linker": ROOT / "config" / "overlays" / "selsnd.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "selsnd.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "selsnd.undefined_syms_auto.txt",
        ),
    },
    "SELFORM": {
        "expected": ROOT / "extracted" / "modules" / "SELFORM.BIN",
        "sha1": "95651f110448e163b81b0dfa44636ed8efd2be02",
        "rodata": ROOT / "asm" / "overlays" / "selform" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "selform" / "nonmatchings" / "2C",
        "data": ROOT / "asm" / "overlays" / "selform" / "data" / "4484.data.s",
        "linker": ROOT / "config" / "overlays" / "selform.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "selform.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "selform.undefined_syms_auto.txt",
        ),
    },
    "UNIFORM": {
        "expected": ROOT / "extracted" / "modules" / "UNIFORM.BIN",
        "sha1": "52f1bc69e5b072827d5723772c3cf9cf5fbc20a4",
        "rodata": ROOT / "asm" / "overlays" / "uniform" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "uniform" / "nonmatchings" / "7A8",
        "linker": ROOT / "config" / "overlays" / "uniform.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "uniform.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "uniform.undefined_syms_auto.txt",
        ),
    },
    "ENTER": {
        "expected": ROOT / "extracted" / "modules" / "ENTER.BIN",
        "sha1": "a7946495e695a25606c865aefe53d515d8cf1dda",
        "rodata": ROOT / "asm" / "overlays" / "enter" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "enter" / "nonmatchings" / "604",
        "data": ROOT / "asm" / "overlays" / "enter" / "data" / "6E64.data.s",
        "linker": ROOT / "config" / "overlays" / "enter.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "enter.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "enter.undefined_syms_auto.txt",
        ),
    },
    "SELECT": {
        "expected": ROOT / "extracted" / "modules" / "SELECT.BIN",
        "sha1": "9555fd6506c2ecdab32c528683cd262c59d558d8",
        "rodata": ROOT / "asm" / "overlays" / "select" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "select" / "nonmatchings" / "4BE0",
        "data": ROOT / "asm" / "overlays" / "select" / "data" / "48AD8.data.s",
        "tail_bytes": b"\x00\x00",
        "linker": ROOT / "config" / "overlays" / "select.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "select.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "select.undefined_syms_auto.txt",
        ),
    },
}


class BuildError(RuntimeError):
    pass


def digest(path: Path) -> str:
    value = hashlib.sha1()
    value.update(path.read_bytes())
    return value.hexdigest()


def find_tool(name: str, bin_dir: Path | None) -> Path:
    executable = name + (".exe" if os.name == "nt" else "")
    candidates = []
    if bin_dir is not None:
        candidates.append(bin_dir / executable)
    candidates.append(ROOT / "tools" / "mips" / "bin" / executable)
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    found = shutil.which(name) or shutil.which(executable)
    if found:
        return Path(found).resolve()
    raise BuildError(f"cannot find {executable}; pass --bin-dir")


def run(command: list[str]) -> None:
    print("+ " + " ".join(command[:6]) + (" ..." if len(command) > 6 else ""))
    result = subprocess.run(command, cwd=ROOT, text=True, capture_output=True)
    if result.stdout:
        print(result.stdout, end="")
    if result.stderr:
        print(result.stderr, end="", file=sys.stderr)
    if result.returncode:
        raise BuildError(f"command failed with exit status {result.returncode}")


def body(path: Path) -> str:
    lines = path.read_text(encoding="utf-8").splitlines()
    return "\n".join(line for line in lines if not line.startswith('.include "macro.inc"'))


def jump_table_slots(function_name: str) -> tuple[JumpTableSlot, ...]:
    ownership = PER_FUNC_JUMP_TABLES.get(function_name)
    if ownership is None:
        return ()
    if not isinstance(ownership, tuple):
        raise BuildError(f"{function_name}: invalid jump-table ownership")
    slots = (ownership,) if ownership and isinstance(ownership[0], str) else ownership
    if (not slots or any(not isinstance(slot, tuple) or len(slot) != 2
                         or not isinstance(slot[0], str)
                         or not isinstance(slot[1], int) or isinstance(slot[1], bool)
                         or slot[1] <= 0 for slot in slots)):
        raise BuildError(f"{function_name}: invalid jump-table ownership")
    if len({slot[0] for slot in slots}) != len(slots):
        raise BuildError(f"{function_name}: duplicate jump-table ownership")
    return slots


def compiled_parts(path: Path, function_name: str) -> tuple[str, str | tuple[str, ...] | None]:
    ignored = {'gcc2_compiled.:', '__gnu_compiled_c:'}
    lines = path.read_text(encoding="utf-8").splitlines()
    text = "\n".join(
        line
        for line in lines
        if line.strip() not in ignored
        and not line.startswith('.include "macro.inc"')
        and not line.lstrip().startswith(".file")
    )
    text = text.replace("$L", f"$L_{function_name}_")
    # maspsx converts GCC .rdata to this directive. Move the whole section,
    # without changing generated text or table words, into its owned slot.
    pattern = r"(?m)^\.section[ \t]+\.rodata[ \t]*\n(.*?)^\.text[ \t]*(?:\n|$)"
    tables = re.findall(pattern, text, flags=re.DOTALL)
    ownership = jump_table_slots(function_name)
    if tables and not ownership:
        raise BuildError(f"{function_name}: generated rodata has no declared ownership")
    if ownership and len(tables) != len(ownership):
        raise BuildError(f"{function_name}: generated jump-table count differs from ownership")
    table = (tables[0] if len(tables) == 1 else tuple(tables)) if tables else None
    text = re.sub(pattern, ".text\n", text, flags=re.DOTALL)
    return ".set at\n" + text + "\n.set noat", table


def relocate_jump_table(
    rodata: str, function_name: str, table: str, slot: JumpTableSlot | None = None
) -> str:
    slots = jump_table_slots(function_name)
    if slot is None:
        if len(slots) != 1:
            raise BuildError(f"{function_name}: explicit slot required for multiple tables")
        slot = slots[0]
    if slot not in slots:
        raise BuildError(f"{function_name}: undeclared jump-table slot")
    symbol, count = slot
    # The existing slot controls alignment. Retaining the compiler's .align 3
    # would shift a valid four-byte-aligned original table and adjacent data.
    lines = [line.strip() for line in table.splitlines() if line.strip()]
    if lines and re.fullmatch(r"\.align\s+[0-3]", lines[0]):
        lines.pop(0)
    if (len(lines) != count + 1
            or not re.fullmatch(r"\$L_[A-Za-z0-9_]+:", lines[0])
            or any(not re.fullmatch(r"\.word\s+\$L_[A-Za-z0-9_]+", line)
                   for line in lines[1:])):
        raise BuildError(f"{function_name}: unsupported generated table layout")
    pattern = (rf"(?m)^dlabel {re.escape(symbol)}\s*\n"
               rf"(.*?)^enddlabel {re.escape(symbol)}$")
    matches = list(re.finditer(pattern, rodata, flags=re.DOTALL))
    if len(matches) != 1:
        raise BuildError(f"{function_name}: missing or duplicate original table {symbol}")
    original = matches[0].group(1).splitlines()
    entries = [i for i, line in enumerate(original) if re.search(r"\.word\s", line)]
    if len(entries) < count:
        raise BuildError(f"{function_name}: original table is shorter than its ownership")
    for i in entries[:count]:
        if not re.search(r"\.word\s+\.L[0-9A-Fa-f]+\s*$", original[i]):
            raise BuildError(f"{function_name}: unexpected original jump-table entry")
    # Any original trailing padding/data stays untouched. Only owned entries go.
    prefix = original[:entries[0]]
    suffix = original[entries[count - 1] + 1:]
    replacement = "\n".join([f"dlabel {symbol}", *prefix, *lines, *suffix,
                              f"enddlabel {symbol}"])
    return rodata[:matches[0].start()] + replacement + rodata[matches[0].end():]


def function_address(path: Path) -> int:
    return int(path.stem.removeprefix("func_"), 16)


def write_aggregate(
    config: dict[str, object], output: Path, compiled: dict[str, Path]
) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    if "text_dir" in config:
        text_paths = sorted(config["text_dir"].glob("func_*.s"), key=function_address)
        if not text_paths:
            raise BuildError(f"no generated functions under {config['text_dir']}")
    else:
        text_paths = [config["text"]]
    rodata = body(config["rodata"])
    compiled_text = {}
    claimed_slots: set[str] = set()
    for function_name, path in compiled.items():
        text, table = compiled_parts(path, function_name)
        compiled_text[function_name] = text
        if table is not None:
            tables = (table,) if isinstance(table, str) else table
            for slot, generated in zip(jump_table_slots(function_name), tables, strict=True):
                if slot[0] in claimed_slots:
                    raise BuildError(f"{function_name}: table slot already claimed: {slot[0]}")
                claimed_slots.add(slot[0])
                rodata = relocate_jump_table(rodata, function_name, generated, slot)
    sections = [
        '.include "macro.inc"',
        ".set noat",
        ".set noreorder",
        rodata,
        ".section .text",
        *(compiled_text[path.stem] if path.stem in compiled else body(path)
          for path in text_paths),
    ]
    if "data" in config:
        sections.append(body(config["data"]))
    if "tail_bytes" in config:
        values = ", ".join(f"0x{value:02X}" for value in config["tail_bytes"])
        sections.extend((".section .data", f".byte {values}"))
    output.write_text("\n\n".join(sections) + "\n", encoding="utf-8")


def find_existing(description: str, candidates: list[Path]) -> Path:
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    raise BuildError(f"cannot find {description}")


def compile_c_sources(
    name: str,
    out_dir: Path,
    psyq_bin: Path | None,
    maspsx_path: Path | None,
    dosbox_path: Path | None = None,
    dos_cc1_path: Path | None = None,
) -> dict[str, Path]:
    source_dir = ROOT / "src" / "overlays" / name.lower()
    sources = sorted(source_dir.glob("func_*.c"))
    if not sources:
        return {}

    psyq_bin = psyq_bin or ROOT / "tools" / "psyq45" / "BIN"
    if not psyq_bin.is_dir():
        raise BuildError("cannot find PsyQ 4.5 BIN directory")
    cpppsx = find_existing("CPPPSX.EXE", [psyq_bin / "CPPPSX.EXE"])
    cc1psx = find_existing("CC1PSX.EXE", [psyq_bin / "CC1PSX.EXE"])
    maspsx = find_existing(
        "maspsx.py",
        [maspsx_path or ROOT / "tools" / "maspsx" / "maspsx.py"],
    )
    maspsx_python = Path(sys.executable).resolve()

    generated = out_dir / "compiled"
    generated.mkdir(parents=True, exist_ok=True)
    compiled: dict[str, Path] = {}
    for source in sources:
        preprocessed = generated / f"{source.stem}.i"
        compiler_asm = generated / f"{source.stem}.s"
        maspsx_asm = generated / f"{source.stem}.maspsx.s"
        run(
            [
                str(cpppsx),
                *CPP_FLAGS,
                source.relative_to(ROOT).as_posix(),
                preprocessed.relative_to(ROOT).as_posix(),
            ]
        )
        cc1_flags = PER_FUNC_CC1_FLAGS.get(source.stem, ["-quiet", "-O2", "-G0"])
        profile = PER_FUNC_COMPILERS.get(source.stem, "gcc281")
        if profile == "gcc272-dos":
            dosbox = find_existing("DOSBox-X", [dosbox_path or ROOT / "tools" / "dosbox-x" / "dosbox-x.exe"])
            dos_cc1 = find_existing("DOS CC1PSX.EXE", [dos_cc1_path or psyq_bin / "DOS" / "CC1PSX.EXE"])
            compile_dos(dos_cc1, dosbox, preprocessed, compiler_asm, cc1_flags)
        elif profile == "gcc281":
            run(
                [
                    str(cc1psx),
                    *cc1_flags,
                    preprocessed.relative_to(ROOT).as_posix(),
                    "-o",
                    compiler_asm.relative_to(ROOT).as_posix(),
                ]
            )
        else:
            raise BuildError(f"unknown compiler profile {profile!r} for {source.stem}")
        result = subprocess.run(
            [
                str(maspsx_python),
                str(maspsx),
                "--aspsx-version=2.79",
                "--macro-inc",
                "--expand-div",
            ],
            cwd=ROOT,
            input=compiler_asm.read_text(encoding="utf-8"),
            text=True,
            capture_output=True,
        )
        if result.returncode:
            raise BuildError(f"maspsx failed for {source.name}: {result.stderr[:1000]}")
        maspsx_asm.write_text(result.stdout, encoding="utf-8")
        compiled[source.stem] = maspsx_asm
    return compiled


def defsyms(paths: tuple[Path, ...]) -> list[str]:
    arguments: list[str] = []
    for path in paths:
        for raw_line in path.read_text(encoding="utf-8").splitlines():
            line = raw_line.split("//", 1)[0].split("#", 1)[0].strip().rstrip(";")
            if line and "=" in line:
                symbol, value = (part.strip() for part in line.split("=", 1))
                arguments.extend(("--defsym", f"{symbol}={value}"))
    return arguments


def first_difference(expected: bytes, actual: bytes) -> str:
    common = min(len(expected), len(actual))
    offset = next((i for i in range(common) if expected[i] != actual[i]), common)
    return f"offset {offset:#x} (expected size {len(expected):#x}, built size {len(actual):#x})"


def build_overlay(
    name: str,
    bin_dir: Path | None,
    psyq_bin: Path | None,
    maspsx_path: Path | None,
    dosbox_path: Path | None = None,
    dos_cc1_path: Path | None = None,
) -> None:
    config = OVERLAYS[name]
    expected = config["expected"]
    if not expected.is_file():
        raise BuildError(f"missing {expected.relative_to(ROOT)}; run tools_src/extract.py")
    if digest(expected) != config["sha1"]:
        raise BuildError(f"{expected.name} has the wrong SHA-1")

    assembler = find_tool("mipsel-none-elf-as", bin_dir)
    linker = find_tool("mipsel-none-elf-ld", bin_dir)
    objcopy = find_tool("mipsel-none-elf-objcopy", bin_dir)

    out_dir = ROOT / "build" / "overlays" / name.lower()
    source = out_dir / "generated" / f"{name.lower()}.s"
    obj = source.with_suffix(".o")
    elf = out_dir / f"{name.lower()}.elf"
    image = out_dir / f"{name}.BIN"
    compiled = compile_c_sources(name, out_dir, psyq_bin, maspsx_path, dosbox_path, dos_cc1_path)
    write_aggregate(config, source, compiled)

    print(f"== {name}.BIN ({len(compiled)} matching C) ==")
    run(
        [
            str(assembler),
            "-EL",
            "-march=r3000",
            "-mtune=r3000",
            "-mabi=32",
            "-G0",
            "-no-pad-sections",
            f"-I{ROOT}",
            f"-I{ROOT / 'include'}",
            "-o",
            str(obj),
            str(source),
        ]
    )
    run(
        [
            str(linker),
            "-EL",
            "-T",
            str(config["linker"]),
            "--no-check-sections",
            *defsyms(config["undefined"]),
            "-o",
            str(elf),
        ]
    )
    run([str(objcopy), "-O", "binary", str(elf), str(image)])

    wanted = expected.read_bytes()
    actual = image.read_bytes()
    actual_sha1 = hashlib.sha1(actual).hexdigest()
    print(f"wanted: {config['sha1']} ({len(wanted)} bytes)")
    print(f"built : {actual_sha1} ({len(actual)} bytes)")
    if actual != wanted:
        raise BuildError("binary mismatch: " + first_difference(wanted, actual))
    print("MATCH")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("overlay", nargs="?", choices=OVERLAYS, type=str.upper)
    parser.add_argument("--all", action="store_true", help="verify every configured overlay")
    parser.add_argument("--bin-dir", type=Path)
    parser.add_argument("--psyq-bin", type=Path, help="directory containing CPPPSX.EXE and CC1PSX.EXE")
    parser.add_argument("--maspsx", type=Path, help="path to maspsx.py")
    parser.add_argument("--dosbox", type=Path, help="DOSBox-X executable for gcc272-dos functions")
    parser.add_argument("--dos-cc1", type=Path, help="DOS GCC 2.7.2 CC1PSX.EXE (default: PsyQ BIN/DOS)")
    args = parser.parse_args()
    if args.all == (args.overlay is not None):
        parser.error("provide one overlay name or --all")

    try:
        names = list(OVERLAYS) if args.all else [args.overlay]
        for name in names:
            build_overlay(name, args.bin_dir, args.psyq_bin, args.maspsx, args.dosbox, args.dos_cc1)
        print(f"Verified {len(names)} overlay(s).")
        return 0
    except (BuildError, OSError, ValueError) as error:
        print(f"build overlay: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
