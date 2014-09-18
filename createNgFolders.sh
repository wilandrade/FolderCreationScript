#!/bin/bash
# Bash script to easily create angular app client file structure.
# A huge thanks to Jonathan Warrick who created the first version of this script at https://github.com/JonathanWarrick/FolderCreationScript
# Example use:
# From current folder, type ./createNgFolders.sh my_scripts module1 test
# The above command will create:
#├── my_scripts
#    │    ├── module1             
#    │    │   ├── module1.controller.js  
#    │    │   ├── module1.spec.js  
#    │    │   ├── module1.html    
#    │    │   ├── module1.services.js
#    │    │   ├── module1.css
#    │    ├── test             
#    │    │   ├── test.controller.js  
#    │    │   ├── test.spec.js  
#    │    │   ├── test.html    
#    │    │   ├── test.services.js
#    │    │   ├── test.css

FOLDER_PATH=$1

ARGS=("$@")
COUNT=$#
START=1

mkdir $FOLDER_PATH
cd $FOLDER_PATH

while [ $START -lt $COUNT ]; do
    CURRENTMODULE=${ARGS[$START]}

    echo "Creating files for $CURRENTMODULE module."
    
    mkdir $CURRENTMODULE
    cd $CURRENTMODULE

    touch $CURRENTMODULE.controller.js
    touch $CURRENTMODULE.spec.js
    touch $CURRENTMODULE.css
    touch $CURRENTMODULE.html
    touch $CURRENTMODULE.services.js

    let START=START+1
    
    cd ..
done
