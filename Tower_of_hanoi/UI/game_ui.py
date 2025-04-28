import random
import time
import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
from Logic.algorithm.recursive import hanoi_recursive
from Logic.algorithm.iterative import hanoi_iterative
from Logic.algorithm.frame_stewart import frame_stewart
from Logic.controller import save_time, save_correct_answer,get_current_round

class GameUI:
    def __init__(self, root, main_root=None):
        self.root = root
        self.main_root = main_root
        self.round_number = None  
        
        self.total_disks = random.randint(5, 10)

        self.disk_colors = [
            "lightblue", "lightcoral", "lightgreen", "lightsalmon", "lightskyblue",
            "lightgoldenrodyellow", "lightpink", "lightseagreen", "lightcyan", "lavender"
        ]
        self.root.title("Tower of Hanoi Game")
        self.root.configure(bg="#f7eec3") 
        self.move_count = 0
        
        # Set up the window size
        window_width = 650
        window_height = 680

        # Center the window on the screen
        screen_width = self.root.winfo_screenwidth()
        screen_height = self.root.winfo_screenheight()
        x = (screen_width // 2) - (window_width // 2)
        y = (screen_height // 2) - (window_height // 2) - 15
        self.root.geometry(f"{window_width}x{window_height}+{x}+{y}")

        self.root.resizable(False, False)

        # Handle window close
        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

        # Combined Top Frame (Back, Reset, Username, Peg Options)
        self.top_frame = tk.Frame(self.root,bg="#f7eec3")
        self.top_frame.pack(pady=(10, 20))

        # Back Button
        back_button = tk.Button(self.top_frame, text="← Back", command=self.go_back,
                                bg="#4169E1", fg="white", font=("Arial", 12, "bold"),
                                activebackground="#27408B", activeforeground="white")
        back_button.grid(row=0, column=0, padx=(0, 10))

        # Reset Button
        reset_button = tk.Button(self.top_frame, text="⟳ Reset", command=self.reset_form,
                                bg="#FF8C00", fg="white", font=("Arial", 12, "bold"),
                                activebackground="#CD6600", activeforeground="white")
        reset_button.grid(row=0, column=1, padx=(0, 20))

        # Player Name
        self.username_label = tk.Label(self.top_frame,bg="#f7eec3", text="Player Name:")
        self.username_label.grid(row=0, column=2, padx=(0, 5))
        self.username_entry = tk.Entry(self.top_frame, font=("Arial", 14), width=20)
        self.username_entry.grid(row=0, column=3, padx=(0, 20))

       # Peg Type Selection
        self.peg_var = tk.StringVar()
        self.peg_var.set('3') 
        self.peg_3_radio = tk.Radiobutton(self.top_frame,bg="#f7eec3", text="3 Pegs", variable=self.peg_var, value='3', command=self.update_algo_options)
        self.peg_3_radio.grid(row=0, column=4, padx=(0, 10))
        self.peg_4_radio = tk.Radiobutton(self.top_frame,bg="#f7eec3", text="4 Pegs", variable=self.peg_var, value='4', command=self.update_algo_options)
        self.peg_4_radio.grid(row=0, column=5)

        # Algorithm Selection Dropdown
        self.algo_frame = tk.Frame(self.top_frame,bg="#f7eec3")  
        self.algo_label = tk.Label(self.algo_frame,bg="#f7eec3", text="Solve Problem:")
        self.algo_label.pack(pady=(10, 0))
        self.algo_var = tk.StringVar()
        self.algo_dropdown = ttk.Combobox(self.algo_frame, textvariable=self.algo_var, state="readonly", width=30)
        self.algo_dropdown['values'] = ["Select algorithm", "Recursive", "Iterative"]
        self.algo_dropdown.current(0)
        self.algo_dropdown.pack()
        self.algo_frame.grid(row=1, column=0, columnspan=6, pady=(10, 0))

        self.frame_stewart_label = tk.Label(self.top_frame, text="Frame-Stewart Algorithm", font=("Arial", 8),bg="#f7eec3")
        self.frame_stewart_label.grid(row=2, column=0, columnspan=6, pady=10)
        self.frame_stewart_label.grid_remove() 

        # solve button
        self.solve_button = tk.Button(self.root, text="Solve", command=self.solve_algo,
                              bg="#32CD32", fg="white", font=("Arial", 10, "bold"),
                              activebackground="#228B22", activeforeground="white",width=6, height=0)
        self.solve_button.pack()

        # Moves Display
        self.canvas = tk.Canvas(self.root, width=600, height=300, highlightthickness=0)
        self.canvas.pack(pady=(20, 10))

        # Moves Count Label 
        self.moves_count_label = tk.Label(self.root,bg="#f7eec3", text="Moves: 0", font=("Arial", 12, "bold"), fg="blue")
        self.moves_count_label.pack(side="right", padx=(10, 20))

        # Sequence of Moves Label
        self.sequence_label = tk.Label(self.root,bg="#f7eec3", text="Sequence of Moves:", font=("Arial", 10, "bold"))
        self.sequence_label.pack(anchor='w', padx=20)

        # Smaller Display for Sequence of Moves
        self.sequence_text = tk.Text(self.root, height=6, width=70, font=("Arial", 10))
        self.sequence_text.pack(pady=(5, 15))

        # Submit Button
        self.start_button = tk.Button(self.root, text="Submit", command=self.submit_answer,
                                    bg="#4CAF50", fg="white", font=("Arial", 14))
        self.start_button.pack(pady=(10, 20))

        self.root.protocol("WM_DELETE_WINDOW", self.go_back)

        self.peg_stacks = {i: [] for i in range(4)} 
        self.draw_pegs_and_disks()
        self.selected_disk = None
        self.last_selected_peg = None 
        self.solved_algorithms = {}
        self.peg_name_to_index = {chr(65 + i): i for i in range(4)}

    def update_algo_options(self):
        peg_type = self.peg_var.get()

        self.peg_stacks = {i: [] for i in range(4)}  # Reset peg stacks
        # self.total_disks = 3  # Reset to initial number of disks
        self.move_count = 0  # Reset move count
        self.moves_count_label.config(text="Moves: 0")  # Update move count label
        self.sequence_text.delete(1.0, tk.END)
        
        self.draw_pegs_and_disks()
        if peg_type == '3':
            self.algo_frame.grid() 
            self.frame_stewart_label.grid_remove()
        else:
            self.algo_frame.grid_remove() 
            self.frame_stewart_label.grid()

    def draw_pegs_and_disks(self):
        self.canvas.delete("all")  # Clear previous drawings
        peg_count = int(self.peg_var.get()) 

        self.peg_stacks = {i: [] for i in range(4)} 

        # Canvas width and spacing calculation
        canvas_width = int(self.canvas["width"])
        spacing = canvas_width // (peg_count + 1)
        self.peg_positions = []  
        
        for i in range(peg_count):
            x = spacing * (i + 1)
            self.peg_positions.append(x)
            self.canvas.create_line(x, 50, x, 250, width=5)

            # Draw the peg (line)
            self.canvas.create_line(x, 50, x, 250, width=5)

            # Add the label (A, B, C, D)
            peg_label = chr(65 + i)  # 65 is the ASCII value for 'A'
            self.canvas.create_text(x, 270, text=peg_label, font=("Arial", 16, "bold"))

        # Draw black base rectangle
        base_height = 10  
        self.canvas.create_rectangle(
            0, 250, 
            canvas_width, 250 + base_height,
            fill="black"
        )

        # Draw disks on the first peg
        self.disk_ids = {}  # {disk_number: canvas_id}
        self.disk_positions = {}
        base_y = 250
        disk_height = 20
        disk_width_factor = 20

        for i in range(self.total_disks, 0, -1):  # Draw from largest disk
            width = i * disk_width_factor
            x_center = self.peg_positions[0]
            color = self.disk_colors[i - 1] 
            rect = self.canvas.create_rectangle(
                x_center - width // 2,
                base_y - disk_height,
                x_center + width // 2,
                base_y,
                fill=color,
                outline="black",
                tags=f"disk_{i}"
            )
            self.disk_ids[i] = rect
            self.disk_positions[i] = (x_center, base_y - disk_height / 2)
            base_y -= disk_height

           # Bind the drag event
            self.canvas.tag_bind(f"disk_{i}", "<ButtonPress-1>", self.on_disk_press)
            self.canvas.tag_bind(f"disk_{i}", "<B1-Motion>", self.on_disk_drag)
            self.canvas.tag_bind(f"disk_{i}", "<ButtonRelease-1>", self.on_disk_release)

            self.peg_stacks[0].append(i)


    def get_disk_from_event(self, event):
    # Get the disk number from the event
        for disk_number, rect in self.disk_ids.items():
            coords = self.canvas.coords(rect)
            if coords[0] < event.x < coords[2] and coords[1] < event.y < coords[3]:
                return disk_number
        return None

    def get_peg_from_event(self, event):
        # Get the peg the event is happening on
        for i, x in enumerate(self.peg_positions):
            if abs(event.x - x) < 50:  # Allow for some margin of error in click position
                return i
        return None

    def on_disk_press(self, event):
        clicked_disk = self.get_disk_from_event(event)        
        peg_index = self.get_peg_from_event(event)
        
        if peg_index is not None and peg_index < len(self.peg_stacks):
            if clicked_disk is not None and self.peg_stacks[peg_index] and clicked_disk == self.peg_stacks[peg_index][-1]:
                self.selected_disk = clicked_disk
                self.start_x = event.x
                self.start_y = event.y
                self.original_peg = peg_index   
            
        else:
            print(f"Invalid peg index: {peg_index}")

    def on_disk_drag(self, event):
        if self.selected_disk:
            # Move the disk by the amount the mouse moved
            dx = event.x - self.start_x
            dy = event.y - self.start_y
            self.canvas.move(self.disk_ids[self.selected_disk], dx, dy)
            self.start_x = event.x
            self.start_y = event.y

    def on_disk_release(self, event):
        if self.selected_disk:
            # Try to find the target peg
            target_peg = self.get_peg_from_event(event)
            if target_peg is not None:
                # Check if move is allowed
                if not self.peg_stacks[target_peg] or self.selected_disk < self.peg_stacks[target_peg][-1]:
                    self.snap_disk_to_peg(self.selected_disk, target_peg)
                else:
                    # Invalid move (trying to place bigger disk on smaller one)
                    messagebox.showerror("Invalid Move", "You cannot place a larger disk on a smaller disk.")
                    self.return_disk_to_original_peg(self.selected_disk)
            else:
                # If not near any peg, move the disk back to its original peg
                self.return_disk_to_original_peg(self.selected_disk)
            
            # Clear selection
            self.selected_disk = None
            self.start_x = None
            self.start_y = None

    def snap_disk_to_peg(self, disk_number, target_peg):
        x_center = self.peg_positions[target_peg]
        disk_width = disk_number * 20
        y_position = 250 - len(self.peg_stacks[target_peg]) * 20

        # Move the disk
        self.canvas.coords(self.disk_ids[disk_number],
            x_center - disk_width // 2,
            y_position - 20,
            x_center + disk_width // 2,
            y_position)

        # Update peg stacks
        if hasattr(self, 'original_peg') and self.original_peg is not None:
            if disk_number in self.peg_stacks[self.original_peg]:
                self.peg_stacks[self.original_peg].remove(disk_number)
        self.peg_stacks[target_peg].append(disk_number)

        self.move_count += 1
        self.moves_count_label.config(text=f"Moves: {self.move_count}")

        # Add move sequence to the Text widget
        source_peg_letter = chr(65 + self.original_peg)  # Example: 0 -> 'A'
        target_peg_letter = chr(65 + target_peg)         # Example: 1 -> 'B'
        move_text = f"{source_peg_letter} -> {target_peg_letter}\n"

        current_text = self.sequence_text.get(1.0, tk.END).strip()

        if current_text:
            updated_text = current_text + ", " + move_text
        else:
            updated_text = move_text

        # Clear and update the Text widget
        self.sequence_text.delete(1.0, tk.END)
        self.sequence_text.insert(tk.END, updated_text)
        self.sequence_text.see(tk.END)

        # Clear original peg after move
        self.original_peg = None

    def return_disk_to_original_peg(self, disk_number):
        if hasattr(self, 'original_peg') and self.original_peg is not None:
            x_center = self.peg_positions[self.original_peg]
            disk_width = disk_number * 20
            y_position = 250 - (len(self.peg_stacks[self.original_peg]) - 1) * 20

            # Move the disk back to its original position
            self.canvas.coords(self.disk_ids[disk_number],
                x_center - disk_width // 2,
                y_position - 20,
                x_center + disk_width // 2,
                y_position)

    def submit_answer(self):
        try:
            player_name = self.username_entry.get().strip()
            if not player_name:
                messagebox.showerror("Error", "Please enter your name before submitting.")
                return 

            if len(player_name) > 30:
                messagebox.showerror("Error", "Name cannot be longer than 30 characters.")
                return 

            if not player_name.isalpha():
                messagebox.showerror("Error", "Name can only contain letters.")
                return 

            raw_text = self.sequence_text.get(1.0, tk.END).strip()
            player_moves = [move.strip() for move in raw_text.split(',') if move.strip()]

            if not self.is_valid_solution(player_moves, self.total_disks, start_peg='A', end_pegs=['C', 'D'], aux_pegs=['B']):
                messagebox.showerror("Error", "Your solution is invalid. Please try again.")
                return

            correct_moves = []
            move_count = 0
            self.pegs = int(self.peg_var.get())  

            round_number = get_current_round()  # Fetch round only once here

            if self.pegs == 3:
                # Recursive
                recursive_moves = []
                start_time = time.time()
                self.solve_using_recursive(recursive_moves)
                end_time = time.time()
                time_taken_ms_recursive = (end_time - start_time) * 1000
                
                move_count = len(recursive_moves)
                correct_moves = recursive_moves
                
                save_time("Recursive", self.total_disks, self.pegs, time_taken_ms_recursive, recursive_moves, move_count, round_number)

                # Iterative
                iterative_moves = []
                start_time = time.time()
                hanoi_iterative(self.total_disks, iterative_moves)
                end_time = time.time()
                time_taken_ms_iterative = (end_time - start_time) * 1000

                move_count = len(iterative_moves)
                correct_moves = iterative_moves  # Can choose either iterative or recursive here
                
                save_time("Iterative", self.total_disks, self.pegs, time_taken_ms_iterative, iterative_moves, move_count, round_number)

            else:
                # Frame-Stewart
                moves = []
                start_time = time.time()
                frame_stewart(self.total_disks, 'A', 'D', ['B', 'C'], moves)
                end_time = time.time()
                time_taken_ms_frame_stewart = (end_time - start_time) * 1000
                
                correct_moves = moves
                move_count = len(correct_moves)

                save_time("Frame-Stewart", self.total_disks, self.pegs, time_taken_ms_frame_stewart, moves, move_count, round_number)

            min_moves = move_count 

            #  Now after solving and saving, check player's solution:
            if len(player_moves) == move_count:
                save_correct_answer(player_name, player_moves, move_count, self.total_disks, self.pegs)
                messagebox.showinfo("Success", "Congratulations! Your solution is correct.")  
            else:
                messagebox.showerror("Error", f"You did not solve using the minimum number of {min_moves} moves. Please try again.")
        except ValueError as ve:
            messagebox.showerror("Value Error", f"Invalid value encountered: {ve}")
        except AttributeError as ae:
            messagebox.showerror("Attribute Error", f"Attribute missing or incorrect: {ae}")
        except TypeError as te:
            messagebox.showerror("Type Error", f"Type mismatch: {te}")
        except Exception as e:
            messagebox.showerror("Unexpected Error", f"An unexpected error occurred:\n{e}")

 

    def is_valid_solution(self, player_moves, num_disks, start_peg='A', end_pegs=['C', 'D'], aux_pegs=['B']):
        # Initialize all pegs
        all_pegs = [start_peg] + aux_pegs + end_pegs
        pegs = {peg: [] for peg in all_pegs}
        
        # Place all disks initially on start peg
        pegs[start_peg] = list(range(num_disks, 0, -1))  # Biggest at bottom
        
        for move in player_moves:
            move = move.strip()
            if not move:
                continue 

            parts = move.split('->')
            if len(parts) != 2:
                return False 

            from_peg, to_peg = parts[0].strip(), parts[1].strip()

            if from_peg not in pegs or to_peg not in pegs:
                return False
            
            if not pegs[from_peg]:
                return False
            
            disk = pegs[from_peg].pop()
            
            if pegs[to_peg] and pegs[to_peg][-1] < disk:
                return False
            
            pegs[to_peg].append(disk)
        
        expected = list(range(num_disks, 0, -1))
        
        for peg in end_pegs:
            if pegs[peg] == expected:
                return True 

        return False  # If none of the end pegs have full correct stack


    def solve_algo(self):
        try:
            algorithm = self.algo_var.get()
            peg_type = self.peg_var.get()

            self.pegs = int(peg_type)

            moves = []  # Initialize moves as an empty list
            start_time = time.time()

            if peg_type == '3':
                if algorithm == "Recursive":
                    time_taken_ms = self.solve_using_recursive(moves)  
                    self.solved_algorithms["Recursive"] = time_taken_ms
                elif algorithm == "Iterative":
                    time_taken_ms = self.solve_using_iterative(moves)
                    self.solved_algorithms["Iterative"] = time_taken_ms
                else:
                    messagebox.showerror("Error", "Please select a valid algorithm.")
                    return
            elif peg_type == '4':
                time_taken_ms = self.solve_using_frame_stewart()
                self.solved_algorithms["Frame-Stewart"] = time_taken_ms
            else:
                messagebox.showerror("Error", "Invalid number of pegs.")
                return

            if ("Recursive" in self.solved_algorithms and
                "Iterative" in self.solved_algorithms and
                "Frame-Stewart" in self.solved_algorithms):
                self.compare_algorithms()


        except ValueError as ve:
            messagebox.showerror("Value Error", f"Invalid value encountered: {ve}")
        except AttributeError as ae:
            messagebox.showerror("Attribute Error", f"Attribute missing or incorrect: {ae}")
        except TypeError as te:
            messagebox.showerror("Type Error", f"Type mismatch: {te}")
        except Exception as e:
            messagebox.showerror("Unexpected Error", f"An unexpected error occurred:\n{e}")

    def solve_using_recursive(self, moves):
        round_number = get_current_round() 
        start_time = time.time()

        for i in range(1000000):  
            pass
        hanoi_recursive(self.total_disks, 'A','B', 'C', moves)
        end_time = time.time()
        time_taken_ms = (end_time - start_time) * 1000  
        move_count = len(moves)  
        self.display_moves(moves, time_taken_ms)
        save_time("Recursive", self.total_disks, self.pegs, time_taken_ms, moves, move_count,round_number)
        return time_taken_ms

    def solve_using_iterative(self, moves):
        round_number = get_current_round() 
        start_time = time.perf_counter()
        for i in range(1000000):  # A simple loop to simulate some work
            pass
        hanoi_iterative(self.total_disks, moves)
        end_time = time.perf_counter()
        time_taken_ms = (end_time - start_time) * 1000
        move_count = len(moves)  
        self.display_moves(moves, time_taken_ms)
        save_time("Iterative", self.total_disks, self.pegs, time_taken_ms, moves, move_count,round_number)
        return time_taken_ms

    def solve_using_frame_stewart(self):
        round_number = get_current_round()
        start_time = time.time()
        for i in range(1000000):  # A simple loop to simulate some work
            pass        
        moves = []
        frame_stewart(self.total_disks, 'A', 'D', ['B', 'C'], moves)
        
        end_time = time.time()
        time_taken_ms = (end_time - start_time) * 1000

        move_count = len(moves)
        self.display_moves(moves, time_taken_ms)
        save_time("Frame-Stewart", self.total_disks, self.pegs, time_taken_ms, moves, move_count, round_number)
        return time_taken_ms


    def display_moves(self, moves, time_taken_ms, show_time_popup=True):
        self.sequence_text.delete(1.0, tk.END)  
        if moves is not None and len(moves) > 0:  
            self.sequence_text.insert(tk.END, "\n".join(moves))  
        else:
            self.sequence_text.insert(tk.END, "No moves to display.")  
        self.moves_count_label.config(text=f"Moves: {len(moves) if moves else 0}") 
        if show_time_popup:
            messagebox.showinfo("Algorithm Time", f"Time taken: {time_taken_ms} ms")

    def compare_algorithms(self):
        try:
            results = {}

            if "Recursive" in self.solved_algorithms:
                results["3 Peg Recursive"] = self.solved_algorithms["Recursive"]
            if "Iterative" in self.solved_algorithms:
                results["3 Peg Iterative"] = self.solved_algorithms["Iterative"]
            if "Frame-Stewart" in self.solved_algorithms:
                results["4 Peg Frame-Stewart"] = self.solved_algorithms["Frame-Stewart"]


            print("\n=== Algorithm Time Comparison ===")
            for algo_name, time_ms in results.items():
                print(f"{algo_name}: {time_ms:.2f} ms")

            fastest_algorithm = min(results, key=results.get)
            print(f"\n🏆 Fastest: {fastest_algorithm} ({results[fastest_algorithm]:.2f} ms)\n")


        except Exception as e:
            messagebox.showerror("Error", f"An error occurred during comparison: {e}")


    def go_back(self):
        self.root.destroy()
        if self.main_root:
            self.main_root.deiconify()

    def on_close(self):
        self.root.destroy()
        if self.main_root:
            self.main_root.destroy()

    def reset_form(self):
        self.username_entry.delete(0, tk.END)        
        self.algo_var.set('Select algorithm')
        self.sequence_text.delete(1.0, tk.END)
        self.move_count = 0
        self.moves_count_label.config(text="Moves: 0")
        self.peg_stacks = {i: [] for i in range(4)}  
        self.draw_pegs_and_disks()
        self.solved_algorithms = {}


