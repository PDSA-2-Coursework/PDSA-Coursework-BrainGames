from tkinter import messagebox

def frame_stewart(n, source, destination, auxiliary_pegs, moves):
    try:
        if n == 0:
            return

        if n == 1:
            moves.append(f"{source} -> {destination}")
            return

        if len(auxiliary_pegs) == 0:
            # Only two pegs (not possible normally), treat like simple move
            moves.append(f"{source} -> {destination}")
            return

        if len(auxiliary_pegs) == 1:
            # Classic 3-peg Tower of Hanoi
            aux = auxiliary_pegs[0]
            frame_stewart(n - 1, source, aux, [destination], moves)
            moves.append(f"{source} -> {destination}")
            frame_stewart(n - 1, aux, destination, [source], moves)
            return

        # Frame-Stewart strategy:
        m = n // 2

        temp_peg = auxiliary_pegs[0]
        remaining_aux_pegs = [destination] + auxiliary_pegs[1:]

        # Step 1: move m disks to temp peg
        frame_stewart(m, source, temp_peg, [destination] + auxiliary_pegs[1:], moves)

        # Step 2: move n-m disks to destination
        frame_stewart(n - m, source, destination, auxiliary_pegs[1:], moves)

        # Step 3: move m disks from temp peg to destination
        frame_stewart(m, temp_peg, destination, [source] + auxiliary_pegs[1:], moves)
    except TypeError as te:
        messagebox.showerror("Type Error", f"Type error occurred: {te}")
    except RecursionError as re:
        messagebox.showerror("Recursion Error", f"Recursion too deep (Stack overflow): {re}")
    except Exception as e:
        messagebox.showerror("Unexpected Error", f"An unexpected error occurred: {e}")