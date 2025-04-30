import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",           # use your username
        password="admin123",   # use your password
        database="brain_games"
    )
