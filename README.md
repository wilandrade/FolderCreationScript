FolderCreationScript
==============
A huge thanks to Jonathan Warrick who created the first version of this script at https://github.com/JonathanWarrick/FolderCreationScript

Bash script to easily generate AngularJS app module files and directories.

## Usage
To use the script, include it in the root directory of your project.
Run the script passing it a directory where your modules will be created and the name of all modules that you want to create.

```
./generateModules.sh PATH MODULE1 MODULE2 ... MODULE_N
```
The following file structure will be generated:
```
├── PATH
│    ├── MODULE1             
│    │   ├── MODULE1.controller.js  
│    │   ├── MODULE1.spec.js  
│    │   ├── MODULE1.html    
│    │   ├── MODULE1.services.js
│    │   ├── MODULE1.css
│    ├── MODULE2             
│    │   ├── MODULE2.controller.js  
│    │   ├── MODULE2.spec.js  
│    │   ├── MODULE2.html    
│    │   ├── MODULE2.services.js
│    │   ├── MODULE2.css
│    │
│    ├── ......
│    │
│    ├── MODULE_N

```

* The PATH parameter specifies the directory that will house your new modules. This directory must already exist.
* The MODULE parameters are the names of the new modules you are creating. This will be the name of each new folder that will be generated and the start name of all files in the folder.

Below is an example of how you would use the script to create three modules:
```
./generateModules.sh ../app/client index user_profile search
```
The above would result in the following files being generated in the ../app/client directory:
```
├── client
│    ├── index 
│    │   ├── index.controller.js  
│    │   ├── index.spec.js  
│    │   ├── index.html    
│    │   ├── index.services.js
│    │   ├── index.css
│    ├── user_profile
│    │   ├── user_profile.controller.js  
│    │   ├── user_profile.spec.js  
│    │   ├── user_profile.html    
│    │   ├── user_profile.services.js
│    │   ├── user_profile.css
│    ├── search
│    │   ├── search.controller.js  
│    │   ├── search.spec.js  
│    │   ├── search.html    
│    │   ├── search.services.js
│    │   ├── search.css
```

## Contributing

* Feel free to contribute with any improvements

To Contribute via Issue Notice:
* Write up a description of the problem
* I will write a fix correspondingly

To Contribute via Pull Request:
* Fork the repo
* Add your changes
* Submit a pull request to master branch
