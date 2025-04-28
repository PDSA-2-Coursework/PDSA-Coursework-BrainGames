import mysql.connector
from mysql.connector import Error,DatabaseError
import tkinter as tk

def connect_db():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='admin123',
            database='hanoi_tower'
        )
        if connection.is_connected():
            return connection
            
    except DatabaseError as de:
        messagebox.showerror("Database Error", f"General database error:\n{de}")
    except TimeoutError as te:
        messagebox.showerror("Timeout Error", f"Database connection timed out:\n{te}")
    except Error as e:
        print(f"Error while connecting to database: {e}")
    return None
