# main.py

from UI.menu_ui import run_main_menu 
from tkinter import messagebox


if __name__ == "__main__":
    try:
        run_main_menu()
    except FileNotFoundError as fnf_err:
        messagebox.showerror("File Error", f"File not found:\n{fnf_err}")
    except Exception as e:
        messagebox.showerror("Unexpected Error", f"An unexpected error occurred while running the main menu:\n{e}")