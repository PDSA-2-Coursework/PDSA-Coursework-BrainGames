from db_utils import save_winner_to_db

sample_path = [(0, 0), (2, 1), (1, 3), (3, 2), (4, 4)]

# Try inserting a test user
try:
    # Try inserting a test user
    save_winner_to_db("TestPlayer", 64, sample_path)
    print("✅ Test passed: User saved successfully.")
except Exception as e:
    print(f"Test failed: {e}")
