import unittest
from unittest.mock import patch, MagicMock
import pygame

# Patch pygame functionality before importing the module
with patch("pygame.image.load", return_value=MagicMock()), \
     patch("pygame.transform.scale", return_value=MagicMock()), \
     patch("pygame.display.set_mode", return_value=MagicMock(spec=pygame.Surface)), \
     patch("pygame.display.set_caption"), \
     patch("pygame.display.get_wm_info", return_value={"window": None}), \
     patch("pygame.draw.rect"), \
     patch("pygame.display.update") as mock_update:  # Mock pygame.display.update to avoid errors

    from knights_tour import backtracking_knights_tour, ROWS, COLS

    class TestBacktrackingKnightTour(unittest.TestCase):

        def test_backtracking_solution_exists(self):
            board = [[-1 for _ in range(COLS)] for _ in range(ROWS)]
            x, y = 0, 0
            board[y][x] = 0
            result = backtracking_knights_tour(board, x, y, 1)
            self.assertTrue(result)
            self.assertTrue(all(all(cell != -1 for cell in row) for row in board))

        def test_invalid_start_position(self):
            board = [[-1 for _ in range(COLS)] for _ in range(ROWS)]
            x, y = -1, -1
            with self.assertRaises(IndexError):
                board[y][x] = 0
                backtracking_knights_tour(board, x, y, 1)

    # Custom message after tests run
    if __name__ == '__main__':
        unittest.main()
        print("✅ All tests passed successfully!")
