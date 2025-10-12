#!/usr/bin/env python3
import os
from datetime import datetime
import subprocess

#----Configuration----
REPO_PATH = "."

# Navigating to the repo
os.chdir(REPO_PATH)

#updating or creating a file
with open("log.txt", "a") as f:
    f.write(f"Automated commit on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")

#git operations
try: 
    subprocess.run(["git", "add", "."], check=True)
    subprocess.run(["git", "commit", "-m", f"Automated commit on {datetime.now().strftime('%Y-%m-%d')}"], check=True)
    subprocess.run(["git", "push"], check=True)
    print("commited and pushed successful!")
except subprocess.CalledProcessError:
    print("No Changes to commit or puush failed")
