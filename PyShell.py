import tkinter as tk
from tkinter import messagebox
import subprocess

# Function to run a batch file
def run_batch(script):
    try:
        subprocess.run([script], shell=True)
        messagebox.showinfo("Success", f"{script} executed successfully!")
    except Exception as e:
        messagebox.showerror("Error", f"Failed to execute {script}\nError: {e}")

# Create the main window
root = tk.Tk()
root.title("🐍🐚")
root.geometry("200x100")  # Set window size

# Define buttons for different batch files
btn1 = tk.Button(root, text="Run Script1.bat", command=lambda: run_batch('Script1.bat'))
btn1.pack(pady=10)

btn2 = tk.Button(root, text="Run Script2.bat", command=lambda: run_batch('Script2.bat'))
btn2.pack(pady=10)

# Start the GUI loop
root.mainloop()