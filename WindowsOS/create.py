import sys
import os
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

def create():
    try:
        repo_location = str(sys.argv[1])
        repo_name = str(sys.argv[2])

        if repo_location=='personal':
            path=personal_path+repo_name
            os.makedirs(path)
            user = Github(personal_token).get_user()
            user.create_repo(repo_name)
            print('Successfully created repository: {}'.format(repo_name))
            webbrowser.open('https://github.com/')  # Replace with a link to your personal GitHub account


        elif repo_location=='school':
            path=school_path+repo_name
            os.makedirs(path)
            user = Github(personal_token).get_user()
            user.create_repo(repo_name)
            print('Successfully created repository: {}'.format(repo_name))
            webbrowser.open('https://github.com/')  # Replace with a link to your personal GitHub account

        elif repo_location=='work':
            path=work_path+repo_name
            os.makedirs(path)
            user = Github(work_token).get_user()
            user.create_repo(repo_name)
            print('Successfully created repository: {}'.format(repo_name))
            webbrowser.open('https://github.com/')  # Replace with a link to your professional GitHub account

    except:
        print("""
        Please provide the correct folder (personal, school, or work) and provide a name for the repository

        """)



if __name__ == "__main__":
    create()
