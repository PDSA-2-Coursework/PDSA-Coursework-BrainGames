import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
from UI.game_ui import GameUI 

class MainMenu:
    def __init__(self, root):
        self.root = root
        self.root.title("Tower of Hanoi Game")

        try:
            # Set up the window size
            window_width = 600
            window_height = 690

            # Load and set the background image
            bg_image = Image.open("Tower_of_Hanoi/UI/tower.png")  # Update the path as needed
            bg_image = bg_image.resize((window_width, window_height), Image.Resampling.LANCZOS)
            self.bg_photo = ImageTk.PhotoImage(bg_image)

            bg_label = tk.Label(self.root, image=self.bg_photo)
            bg_label.place(x=0, y=0, relwidth=1, relheight=1)

        except FileNotFoundError:
            print("Background image file not found. Please check the path.")
            self.root.quit()
            return
        except Exception as e:
            print(f"An unexpected error occurred while loading the background image: {e}")
            self.root.quit()
            return

        # Center the window on the screen
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        x = (screen_width // 2) - (window_width // 2)
        y = (screen_height // 2) - (window_height // 2) - 15
        self.root.geometry(f"{window_width}x{window_height}+{x}+{y}")
        self.root.resizable(False, False)

        # Title Label
        title_label = tk.Label(self.root, text="Tower of Hanoi", font=("Arial Rounded MT Bold", 24), bg="#c24f29", fg="white")
        title_label.pack(pady=(30, 20))  
        
        start_button = tk.Button(self.root, text="Start Game", width=20, font=("Arial", 14, "bold"),
                                 command=self.start_game, bg="#FFD700", fg="black",
                                 activebackground="#FFC107", activeforeground="white")
        start_button.pack(pady=10)

        rules_button = tk.Button(self.root, text="Game Rules", width=20, font=("Arial", 14, "bold"),
                                 command=self.show_rules, bg="#FF9800", fg="black",
                                 activebackground="#FB8C00", activeforeground="white")
        rules_button.pack(pady=10)

        exit_button = tk.Button(self.root, text="Exit", width=20, font=("Arial", 14, "bold"),
                                command=root.quit, bg="#F44336", fg="black",
                                activebackground="#D32F2F", activeforeground="white")
        exit_button.pack(pady=10)

    def start_game(self):
        self.root.withdraw()  # Hide main menu
        game_window = tk.Toplevel(self.root)
        GameUI(game_window, main_root=self.root)  # Pass the callback to return to the main menu
        
    def show_rules(self):
        rules_text = (
            "🗼 Welcome to the Tower of Hanoi! 🎮\n\n"
            "Your objective is to move all the disks from the source peg to the target peg.\n"
            "You must follow these rules:\n"
            "1. Only one disk can be moved at a time.\n"
            "2. No larger disk may be placed on top of a smaller disk.\n\n"
            "Can you solve the puzzle in the least number of moves?\n\n"
            "Good luck, Player!"
        )
        messagebox.showinfo("Game Rules", rules_text)

def run_main_menu():
    root = tk.Tk()
    MainMenu(root)
    root.mainloop()