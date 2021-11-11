@echo off

set location=%1
set reponame=%2

if "%1"=="personal" (
    if [%reponame%]==[] (
        echo Please provide a name for the repository.
    ) else (
        @REM Fill in with details (inside the brackets)
        python @REM [path\to\this\folder]\Windows_OS\create.py %location% %reponame% 
        cd @REM [path\to\personal\folder]\Personal\%reponame%
        git init
        @REM Fill in with your personal account details
        git config user.name @REM [USERNAME]
        git config user.email @REM [EMAIL]
        git remote add origin git@github.com:@REM [USERNAME]/%reponame%.git
        type nul > README.md
        git add .
        git commit -m "Initial commit"
        git push -u origin master
        code .   @REM Opens VSCode (replace with 'jupyter notebook' to open a Jupyter Notebook)

    )


) else (
    if "%1"=="school" (
        if [%reponame%]==[] (
            echo Please provide a name for the repository.
        ) else (
            @REM Fill in with details (inside the brackets)
            python @REM [path\to\this\folder]\Windows_OS\create.py %location% %reponame% 
            cd @REM [path\to\school\folder]\School\%reponame%
            git init
            @REM Fill in with your personal account details
            git config user.name @REM [USERNAME]
            git config user.email @REM [EMAIL]
            git remote add origin git@github.com:@REM [USERNAME]/%reponame%.git
            type nul > README.md
            git add .
            git commit -m "Initial commit"
            git push -u origin master
            code .   @REM Opens VSCode (replace with 'jupyter notebook' to open a Jupyter Notebook)
        )

    ) else (
        if "%1"=="work" (
            if [%reponame%]==[] (
                echo Please provide a name for the repository
            ) else (
                @REM Fill in with details (inside the brackets)
                python @REM [path\to\this\folder]\Windows_OS\create.py %location% %reponame% 
                cd @REM [path\to\work\folder]\Work\%reponame%
                git init
                @REM Fill in with your professional account details
                git config user.name @REM [USERNAME]
                git config user.email @REM [EMAIL]
                git remote add origin git@github.com-work:@REM [USERNAME]/%reponame%.git
                type nul > README.md
                git add .
                git commit -m "Initial commit"
                git push -u origin master
                code .   @REM Opens VSCode (replace with 'jupyter notebook' to open a Jupyter Notebook)
            )

        ) else (
            echo Please choose "personal", "school", or "work"
        )
    )
)