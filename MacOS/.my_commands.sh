#!/bin/bash

function create() {
    # Change the following with your information
    cd /Users/name/GitHub/work/automated-repo-initialization # Change to the path of the repository on your local machine
    python3 /Users/name/GitHub/work/automated-repo-initialization/create.py $1 $2 # Change to the path of the repository on your local machine

    # Path to the folders on your local machine
    personal='/Users/name/GitHub/Personal/'
    school='/Users/name/GitHub/School/'
    work='/Users/name/GitHub/Work/'

    # Usernames
    personal_user = 'username'     # Replace with your personal GitHub username
    professional_user = 'username' # Replace with your professional GitHub username

    # Emails
    personal_email = 'name@email.com'      # Replace with your personal GitHub email
    professional_email = 'name@email.com'  # Replace with your professional GitHub email


    # No need to make changes to the following lines of code
    if [ "$1" == "" ]
    then
        echo "Please select personal, school, or work"

    elif [ "$1" == "personal" ]
    then
        if [ -n "$2" ]
        then
            cd $personal$2
            git init
            git remote add origin git@github.com:$personal_user/$2.git
            git config user.name $personal_user
            git config user.email $personal_email
            touch README.md
            git add .
            git commit -m "Initial commit"
            git push -u origin master
            jupyter notebook  # Opens Jupyter notebook
        else
            echo "Please provide a name for the repository"
        fi

    elif [ "$1" == "school" ]
    then
        if [ -n "$2" ]
        then
            cd $school$2
            git init
            git remote add origin git@github.com:$personal_user/$2.git
            git config user.name $personal_user
            git config user.email $personal_email
            touch README.md
            git add .
            git commit -m "Initial commit"
            git push -u origin master
            jupyter notebook  # Opens Jupyter notebook
        else
            echo "Please provide a name for the repository"
        fi

    elif [ "$1" == "work" ]
    then
        if [ -n "$2" ]
        then
            cd $work$2
            git init
            git remote add origin git@github.com-work:$professional_user/$2.git
            git config user.name $professional_user
            git config user.email $professional_email
            touch README.md
            git add .
            git commit -m "Initial commit"
            git push -u origin master
            jupyter notebook  # Opens Jupyter notebook
        else
            echo "Please provide a name for the repository"
        fi
        
    else
        echo "Please try again"
    fi
}