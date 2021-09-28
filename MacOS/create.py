import os
import sys
import webbrowser
from github import Github


# Fill out the following variable with your information
personal_path = 'full_path/to/personal_folder' # Path to the 'personal' directory 
school_path = 'full_path/to/school_folder'     # Path to the 'school' directory 
work_path = 'full_path/to/work_folder'         # Path to the 'work' directory  

# Tokens for each GitHub account
# You can create a new token at: https://github.com/settings/tokens/new
personal_token = '' # Token for personal GitHub account
work_token = ''     # Token for professional GitHub account

def set_up(path, name, token):
    full_path = path + name
    os.makedirs(full_path)
    user = Github(token).get_user()
    user.create_repo(name)
    print(f'Successfully created repository: {name}')

def create():
    try:
        arg = str(sys.argv[1])  # Directory
        repo_name = str(sys.argv[2])  # Name of the repository

        if arg == 'personal':
            set_up(personal_path, repo_name, personal_token)
            webbrowser.open('https://github.com/')  # Replace with a link to your personal GitHub account

        elif arg == 'school':
            set_up(school_path, repo_name, personal_token)
            webbrowser.open('https://github.com/')  # Replace with a link to your personal GitHub account
        
        elif arg == 'work':
            set_up(work_path, repo_name, work_token)
            webbrowser.open('https://github.com/')  # Replace with a link to your professional GitHub account
    except:
        print("""
        Please type the name of the folder you would like to place the new repository in followed by the name you would like to give the new repository.
        The possible folder locations are:
        Personal
        School
        Work
        
        """)

if __name__ == "__main__":
    create()