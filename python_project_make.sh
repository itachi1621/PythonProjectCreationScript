#! /bin/bash
#Check if python3-venv is installed
venv_plugin_check(){
    is_installed=false
    if ! dpkg -s python3-venv > /dev/null 2>&1; then
        read -p  "python3-venv is not currently installed, script can procceed but no virtual environment will be created would you like to install python3-venv now [y/n] ? : " ui
        if [ "$ui" = "y" ] || [ "$ui" = "Y" ] || [ "$ui" = "Yes" ] || [ "$ui" = "yes" ]; then
            sudo apt-get install -y python3-venv
            is_installed=true
        else
            echo "Script will now proceed to create python project without a virtual environment."
        fi
    else
        is_installed=true 
    fi
    echo $is_installed
}

create_project_files(){
    
    echo "Creating project files"
    git init
    git branch -M main
    touch .gitignore
    echo "__pycache__" >> .gitignore
    touch README.md
    echo "# $1" >> README.md
    touch LICENSE
    touch "$1.py"
    echo "Project $1 created"
}


venv_installed=$(venv_plugin_check)


read -p "Enter name of Python project to create:" pname

echo "Creating project $pname"
echo "Creating directory structure"
mkdir "$pname"


cd "$pname" || echo "Failed " exit

create_project_files "$pname"




if [ "$venv_installed" = true ]; then
    venv_name="my_env"
    echo "Creating Python Vitual Environment Called $venv_name ..."
    python3 -m venv "$venv_name" 
    
    echo "my_env" >> .gitignore
    echo "__pycache__" >> .gitignore

fi

#rm -r ../"$pname"

