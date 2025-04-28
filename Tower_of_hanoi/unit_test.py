import unittest
from unittest.mock import patch
import tkinter as tk
from UI.game_ui import GameUI

class TestGameUI(unittest.TestCase):
    def setUp(self):
        self.root = tk.Tk()
        self.game_ui = GameUI(self.root)
        self.game_ui.pegs = 3
        self.game_ui.round_number = 1

        # Patch tkinter messageboxes for all tests
        self.patcher_info = patch('tkinter.messagebox.showinfo')
        self.mock_showinfo = self.patcher_info.start()
        self.patcher_error = patch('tkinter.messagebox.showerror')
        self.mock_showerror = self.patcher_error.start()

    def tearDown(self):
        try:
            self.root.destroy()
        except:
            pass
    
        self.patcher_info.stop()
        self.patcher_error.stop()

    def test_initialization(self):
        self.assertIsInstance(self.game_ui, GameUI)
        self.assertIsNotNone(self.game_ui.disk_colors)
        self.assertGreaterEqual(self.game_ui.total_disks, 5)
        self.assertLessEqual(self.game_ui.total_disks, 10)

    def test_update_algo_options_with_3_pegs(self):
        self.game_ui.peg_var.set('3')
        self.game_ui.update_algo_options()
        self.assertTrue(self.game_ui.algo_frame.winfo_manager())

    def test_update_algo_options_with_4_pegs(self):
        self.game_ui.peg_var.set('4')
        self.game_ui.update_algo_options()
        self.assertTrue(self.game_ui.frame_stewart_label.winfo_manager())

    def test_is_valid_solution_correct(self):
        player_moves = ["A -> C", "A -> B", "C -> B", "A -> C", "B -> A", "B -> C", "A -> C"]
        result = self.game_ui.is_valid_solution(player_moves, 3)
        self.assertTrue(result)

    def test_is_valid_solution_incorrect(self):
        player_moves = ["A -> C", "A -> B", "C -> B", "A -> C", "B -> A", "B -> C", "A -> B"]
        result = self.game_ui.is_valid_solution(player_moves, 3)
        self.assertFalse(result)

    @patch('Logic.algorithm.recursive.hanoi_recursive')
    @patch('Logic.controller.save_time')
    def test_solve_using_recursive(self, mock_save_time, mock_hanoi_recursive):
        moves = []
        mock_hanoi_recursive.return_value = None
        mock_save_time.return_value = None
        self.game_ui.total_disks = 3
        time_taken = self.game_ui.solve_using_recursive(moves)
        self.assertIsInstance(time_taken, float)

    @patch('Logic.algorithm.iterative.hanoi_iterative')
    @patch('Logic.controller.save_time')
    def test_solve_using_iterative(self, mock_save_time, mock_hanoi_iterative):
        moves = []
        mock_hanoi_iterative.return_value = None
        mock_save_time.return_value = None
        self.game_ui.total_disks = 3
        time_taken = self.game_ui.solve_using_iterative(moves)
        self.assertIsInstance(time_taken, float)

    @patch('Logic.algorithm.frame_stewart.frame_stewart')
    @patch('Logic.controller.save_time')
    def test_solve_using_frame_stewart(self, mock_save_time, mock_frame_stewart):
        mock_frame_stewart.return_value = None
        mock_save_time.return_value = None
        self.game_ui.total_disks = 3
        time_taken = self.game_ui.solve_using_frame_stewart()
        self.assertIsInstance(time_taken, float)

    def test_submit_answer_valid(self):
        self.game_ui.username_entry.insert(0, "Player1")
        self.game_ui.sequence_text.insert(tk.END, "A -> C, A -> B, C -> B, A -> C, B -> A, B -> C, A -> C")
        self.game_ui.pegs = 3
        self.game_ui.total_disks = 3
        self.game_ui.submit_answer()


    def test_submit_answer_invalid(self):
        self.game_ui.username_entry.insert(0, "Player1")
        self.game_ui.sequence_text.insert(tk.END, "A -> C, A -> B")
        self.game_ui.pegs = 3
        self.game_ui.total_disks = 3
        self.game_ui.submit_answer()
        

class CustomTestResult(unittest.TextTestResult):
    def addSuccess(self, test):
        super().addSuccess(test)
        print(f"✅ {test}")

    def addFailure(self, test, err):
        super().addFailure(test, err)
        print(f"❌ {test}")

    def addError(self, test, err):
        super().addError(test, err)
        print(f"💥 {test} (ERROR)")

if __name__ == '__main__':
    unittest.main(testRunner=unittest.TextTestRunner(resultclass=CustomTestResult))
