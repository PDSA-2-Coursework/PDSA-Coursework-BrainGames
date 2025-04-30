# controller.py
from DB.db import connect_db
from tkinter import messagebox
from mysql.connector import Error as MySQLError, InterfaceError, DatabaseError
from mysql.connector import Error as MySQLError, InterfaceError, DatabaseError

def get_current_round():
    connection = connect_db()
    if connection:
        try:
            cursor = connection.cursor()
            cursor.execute("SELECT MAX(round) FROM hanoi_algo_time")
            result = cursor.fetchone()
            current_round = result[0] if result[0] is not None else 0
            return current_round + 1

        except (MySQLError, InterfaceError, DatabaseError) as db_err:
            messagebox.showerror("Database Error", f"Error while fetching current round:\n{db_err}")
            return 1
        except (AttributeError, TypeError) as data_err:
            messagebox.showerror("Data Error", f"Data error while fetching current round:\n{data_err}")
            return 1
        except ConnectionError as conn_err:
            messagebox.showerror("Connection Error", f"{conn_err}")
            return 1
        except Error as e:
            print(f"Error fetching round: {e}")
            return 1
        finally:
            connection.close()


def save_time(algorithm, disks, pegs, time_taken, moves, move_count,round_number):
    connection = connect_db()
    if connection:
        try:
            cursor = connection.cursor()
            cursor.execute("""
                INSERT INTO hanoi_algo_time (round, algorithm, disks, pegs, time_taken_ms, moves, move_count) 
                VALUES (%s, %s, %s, %s, %s, %s, %s)
            """, (round_number, algorithm, disks, pegs, time_taken, str(moves), move_count))
            connection.commit()
        except (MySQLError, InterfaceError, DatabaseError) as db_err:
            messagebox.showerror("Database Error", f"Error while saving time:\n{db_err}")
        except ConnectionError as conn_err:
            messagebox.showerror("Connection Error", f"{conn_err}")
        except Error as e:
            print(f"Error saving result: {e}")
        finally:
            connection.close()


def save_correct_answer(player_name, moves, move_count, disks, pegs):
    connection = connect_db()
    if connection:
        try:
            cursor = connection.cursor()
            cursor.execute("""
                INSERT INTO hanoi_game_results (player_name, moves, move_count, disks, pegs) 
                VALUES (%s, %s, %s, %s, %s)
            """, (player_name, str(moves), move_count, disks, pegs))
            connection.commit()
        except (MySQLError, InterfaceError, DatabaseError) as db_err:
            messagebox.showerror("Database Error", f"Error while saving time:\n{db_err}")
        except ConnectionError as conn_err:
            messagebox.showerror("Connection Error", f"{conn_err}")
        except Error as e:
            print(f"Error saving correct answer: {e}")
        finally:
            connection.close()