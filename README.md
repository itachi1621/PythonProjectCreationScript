# Python Project Creation Script

This is a simple shell script that automates the process of creating a new Python project and initializing Git repository.

## Requirements
1. Python 3.x installed on your system
2. Git installed on your system

## Optional 
1. python3-venv package for creating virual enviroment


## Usage
1. Clone this repository or download the `python_project_make.sh` script.

2. Open a terminal and navigate to the directory where you want to create your project.

3. Place `python_project_make.sh` script in that directory 

3. Run the script using the following command:
```
sh /path/to/python_project_make.sh
```
4. Follow the prompt to enter your `project name`

### Following actions will then happen:
1. The script will create a new directory named with `project_name` 
2. Initialize a Git repository 
3. Set repository branch to `main`
4. Create a `README.md` file with the `project name` as its contents.
5. Create a empty `LICENCE` file.
6. Create and populate a `.gitignore` file to exclude the virual environment
7. Create a empty python file with the name `project_name.py`
8. Create a virtual environment named `my_env` if applicable

You can start working on your project by opening the project directory in your favorite code editor.

## License
This script is released under the MIT License. Feel free to modify and use it however you like.
