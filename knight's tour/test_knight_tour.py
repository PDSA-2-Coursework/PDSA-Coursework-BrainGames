import unittest
from unittest.mock import patch, MagicMock

# Patch both image loading and scaling before importing knights_tour
with patch("pygame.image.load", return_value=MagicMock()), \
     patch("pygame.transform.scale", return_value=MagicMock()):
    
    from knights_tour import (
        get_valid_moves,
        solve_knights_tour_no_ui,
        save_winner_to_db,
        ROWS, COLS
    )

class TestKnightTour(unittest.TestCase):

    def test_get_valid_moves_center(self):
        visited = [(3, 3)]
        moves = get_valid_moves((3, 3), visited)
        expected_count = 8
        self.assertEqual(len(moves), expected_count)

    def test_get_valid_moves_corner(self):
        visited = [(0, 0)]
        moves = get_valid_moves((0, 0), visited)
        expected = [(2, 1), (1, 2)]
        self.assertEqual(set(moves), set(expected))

    def test_knights_tour_solution_exists(self):
        board = [[-1 for _ in range(8)] for _ in range(8)]
        board[0][0] = 0
        result = solve_knights_tour_no_ui(board, 0, 0, 1)
        self.assertTrue(result)

    def test_knights_tour_incomplete_board(self):
        board = [[-1 for _ in range(8)] for _ in range(8)]
        board[0][0] = 0
        board[1][2] = 99
        board[2][1] = 99
        result = solve_knights_tour_no_ui(board, 0, 0, 1)
        self.assertFalse(result)

if __name__ == '__main__':
    runner = unittest.TextTestRunner()
    result = runner.run(unittest.defaultTestLoader.loadTestsFromTestCase(TestKnightTour))
    if result.wasSuccessful():
        print("\n✅ All tests passed successfully!")
    else:
        print("\n❌ Some tests failed.")
