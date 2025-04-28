from tkinter import messagebox

def hanoi_recursive(n, source, target, auxiliary, moves):
    try:
        if n == 1:
            moves.append(f"{source} -> {target}")
            return
        hanoi_recursive(n - 1, source, auxiliary, target, moves)
        moves.append(f"{source} -> {target}")
        hanoi_recursive(n - 1, auxiliary, target, source, moves)
    except TypeError as te:
        messagebox.showerror("Type Error", f"Type error occurred: {te}")
    except RecursionError as re:
        messagebox.showerror("Recursion Error", f"Recursion error: Too many recursive calls, check if 'n' is a valid number: {re}")
    except Exception as e:
        messagebox.showerror("Unexpected Error", f"An unexpected error occurred: {e}")
