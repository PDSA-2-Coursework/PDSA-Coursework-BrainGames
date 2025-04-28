from tkinter import messagebox

def hanoi_iterative(n, moves):
    try:
        source, auxiliary, target = 'A', 'B', 'C'
        stack = [(n, source, target, auxiliary)]
        
        while stack:
            n, source, target, auxiliary = stack.pop()
            if n == 1:
                moves.append(f"{source} -> {target}")
            else:
                stack.append((n - 1, auxiliary, target, source))  # Move n-1 disks
                moves.append(f"{source} -> {target}")
                stack.append((n - 1, source, auxiliary, target))  # Move n-1 disks
        
        return moves
    except TypeError as te:
        messagebox.showerror("Type Error", f"Type error occurred: {te}")
    except IndexError as ie:
        messagebox.showerror("Index Error", f"Stack operation error: {ie}")
    except Exception as e:
        messagebox.showerror("Unexpected Error", f"An unexpected error occurred: {e}")