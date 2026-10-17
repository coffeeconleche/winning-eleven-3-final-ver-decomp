"""SDK-free checks for opt-in external small-data addressing."""
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import build_overlay


class SmallDataTests(unittest.TestCase):
    def test_all_supported_access_widths_are_opt_in(self):
        for op in ('lb', 'lbu', 'lh', 'lhu', 'lw', 'sb', 'sh', 'sw'):
            source = f'    {op} $2,D_800E6A90\n'
            self.assertEqual(build_overlay.rewrite_small_data(source, frozenset()), source)
            self.assertEqual(
                build_overlay.rewrite_small_data(source, frozenset({'D_800E6A90'})),
                f'    {op} $2,%gp_rel(D_800E6A90)($gp)\n',
            )

    def test_offsets_labels_comments_and_other_symbols_are_untouched(self):
        source = ('lw $2,D_800E6A90+4\n'
                  'lw $2,%lo(D_800E6A90)($3)\n'
                  'lw $2,D_800E6A94\n'
                  'D_800E6A90:\n'
                  '# lw $2,D_800E6A90\n'
                  'la $2,D_800E6A90\n')
        self.assertEqual(
            build_overlay.rewrite_small_data(source, frozenset({'D_800E6A90'})), source,
        )

    def test_rewrite_is_idempotent_and_scoped_to_one_function(self):
        symbols = build_overlay.PER_FUNC_SMALL_DATA['func_800AA7EC']
        result = build_overlay.rewrite_small_data('lw $v0,D_800E6A94\n', symbols)
        self.assertEqual(build_overlay.rewrite_small_data(result, symbols), result)
        self.assertIsNone(build_overlay.PER_FUNC_SMALL_DATA.get('unmapped_function'))


if __name__ == '__main__':
    unittest.main()
