#! /bin/bash
#Check if python3-venv is installed
if ! dpkg -s python3-venv > /dev/null 2>&1; then
    read -pr "python3-venv is not currently installed, script can procceed but no virtual environment will be created would you like to install python3-venv now [y/n] ? : " ui
    if [ "$ui" = "y" ] || [ "$ui" = "Y" ] || [ "$ui" = "Yes" ] || [ "$ui" = "yes" ]; then
        sudo apt install python3-venv
    else
        echo "Script will now proceed to create python project without a virtual environment."
    fi
fi

read -pr "Enter name of Python project to create:" pname
venv_name="my_env"
echo "Creating project $pname"
echo "Creating directory structure"

mkdir $pname



cd "$pname" || echo "Failed " exit

echo "Creating Python Vitual Environment Called $venv_name ..."

python3 -m venv "$venv_name" 

touch .gitignore
echo "my_env" >> .gitignore
echo "__pycache__" >> .gitignore

touch README.md
touch LICENSE
touch "$pname.py"

git init


echo "Project $pname created"

