# Summary
Creating a new repository can be a mundane task with multiple steps. Some of the steps include: initialize a git repository, connect it to GitHub, create a README file, and open up an IDE to start working. In my case, I have two GitHub accounts (personal and professional accounts), so I would also need to ensure that the correct account is used for each project when making changes to the repository.

The goal of this project is to automate this process with a custom command. What usually takes a few lines of code can be done in one line.

The way this command works is:

`create [folder location] [repository name]`

Examples:
- `create personal fraction-calculator`
- `create school final-project`
- `create work anomaly-detection`

There are two folders in this repository; one for Windows OS and one for Mac OS.

# Setup
First you have to clone this repository ([click here](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) for instructions on how to clone a GitHub repository)

**Important:** Before continuing on to the next steps, make sure you fill in your details (your username(s), personal access token(s), etc) in the code because the command will not work without this information. I left explanations on how to do this in the code, but feel free to reach out to me if there are any questions. Remember to never share your personal access token with anyone.
## Mac OS
- Open the terminal and type: `$ cd /etc/bashrc`
- Once inside the "bashrc" folder, add the custom command by typing: `$ source (path/to/shell-file).sh`

## Windows OS
- Open the file explorer and locate the "System32" folder
  - For me, the path for the folder is `C:\Windows\System32`
- Once inside the folder, drag and drop the batch file into the "System32" folder
