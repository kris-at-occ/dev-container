# dev-container
A simple project creating a directory for a new Python project, which uses Docker container to execute Python code

Fork this repo, name it as your new Python project.

Clone your fork to a local directory:

`git clone https://github.com/<your-username>/<your-fork-name>`

Go to the new directory:

`cd <your-fork-name>`

If you don't want to fork, clone this repo to your local directory, then create a new repo in GitHub named my-python-project:

    git clone https://github.com/python-in-containers/dev-container>

    Change directory name to <my-python-project>

    mv dev-container <my-python-project>

    Go to the new directory:

    cd <my-python-project>

    Change remote origin url:
    
    git remote set-url origin https://github.com/<your-username>/<my-python-project>
    
    Now push to your new repo:
    
    git push -u origin master

Edit *requirements.txt* file to include any Python software you need installed, and eventually edit *init-dev-environment.sh* script to add Linux packages you may want.

Now you can start a terminal window and invoke a Docker container with Python:

`docker run --rm -it --name python-dev -v "$(pwd)":/app -p 8001:8000 python:3 /bin/bash`

Options explained:

* docker run : docker command with 'run' option to create and run a container
* --rm : remove the container after exit, you can skip this one if you intend to restart the container
* -it : interactive with terminal, as we want to enter commands and read output
* -v "$(pwd)":/app : bind mount current directory into container's /app directory - all files in
                     current directory (incuding subdirectories) are shared with the container
* -p 8001:8000 : container's port 8000 is available on localhost as port 8001
* python:3 : this is the name of image used to create the container
* /bin/bash : run this command (shell) once the container is created

Open your favorite Pyhton IDE (or text editor), create some code and run it in the Docker terminal window :)

