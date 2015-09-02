# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Installs stuff for web development, e.g mysql-workbench

# Install MySQL Workbench

	sudo apt-get install mysql-workbench