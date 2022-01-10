## Welcome to S-Group ! 

http://Zombatar.github.io 

(temp, these pages are developed based on xteam.ihep.ac.cn)

### Develop the pages with Docker

We have build a docker image in which environment is set, you can use it follow these steps:

1.Install [**Docker**](https://www.docker.com/get-started) in your computer. 

* For Windows after install Docker, you will need to install [**WSL2(Windows Subsystem Linux)**](https://docs.microsoft.com/zh-cn/windows/wsl/install-manual)

* For Linux and MacOS, follow the instructions in Docker official website.

2.Start Docker

* For Windows, just click the desktop icon.

* For Linux or MacOS, you can start it with the command entered in your terminal.

```bash
$ systemctl start docker

```

3.Pull the image from Docker Hub

* For Windows, Linux or MacOS, use 

```bash
$ docker pull linj2020/s_group_page_dev/1.0.2

```

in your terminal.

>Windows CMD: WIN+R, and run cmd. 

4. Run the container.

* For Windows, Linux or MacOS, use 

```bash
$ docker run -it -p 80:80 -v <where you put your git repository in your OS>:/home/ linj2020/sgroup_page_dev:1.0.2
#-v will mount the file in your OS to the container's /home/
#-p set the port: localhost:80->80/tcp
```

5. enter container's /home/xxx and build the page

```bash
# cd /home/xxx
# make test
```

6. open the browser in your OS and connect the localhost:80

>After changing the repository you need to refresh the page.
>In that case, you can modify the page files in your own OS and see the results in your own browser. 

7. After you restart your computer

The container will shutdown, you need to start the container like this:

```bash
C:\Users\麦迪>docker ps -a
CONTAINER ID   IMAGE                            COMMAND       CREATED        STATUS                      PORTS     NAMES
8a9f315bc400   linj2020/sgroup_page_dev:1.0.2   "/bin/bash"   11 hours ago   Exited (0) 23 seconds ago             s_group_page
C:\Users\麦迪>docker start s_group_page
s_group_page
C:\Users\麦迪>docker exec -it s_group_page bash
[root@8a9f315bc400 /]# cd /home/Zombatar.github.io/
[root@8a9f315bc400 Zombatar.github.io]# make test

```

Then check the localhost:80 to see the page.

### Some other ways 

1. Fork the project: https://github.com/zombatar/Zombatar.github.io into your own repo 

2. Rename 'Zombatar' to username.github.io 

3. Visit https://username.github.io 

4. Make Pull Request to Zombatar/Zombatar.github.io. 

### For how these pages come

These pages are mainly based on [**Jekyll**](http://jekyllcn.com/) which can transform your plain text into static websites and blogs. 

More precisely these pages are built under the [**Github Pages**](https://pages.github.com/).

You can follow the guide step by step to build your own blog.

### For debugging 

To build the environment for debugging these pages here:

#### Requirements

* Mac OS or Linux OS
* Internet
* git

then follow these steps:

1. install [RVM](https://rvm.io/).

2. install Ruby using RVM.

```bash
$ rvm install 2.7.2 
#These pages will need Ruby 2.7.2, the higher version may cause some problems.
#Actually as a management tool for Ruby Language, you can install several versions of Ruby 
#and switch between them.

#For more details, you can run the command below for help:
$ rvm -h

#The suitable version of RubyGems will be installed automatically.
#Ruby's "gem" will play the role similar to Python's "pip" and CentOs's "yum" 
#and help you manage your gems.
#gem's version will change with Ruby.
$ gem -v #check gem's version
``` 

3. install [bundler](https://www.bundler.cn/) using gem.
```bash
$ gem install bundler
# Bundler can track the right version of needed gems 
# to make the Ruby project be build in the same environment.
```

4. lock the environment for the project using bundler.
```bash
# git clone this repo to a local directory like /home/username/yourpath/ (better be empty)
$ cd /home/username/yourpath/
$ git clone <your_own_fork_link>

# install the environment gems like jekyll... and set the environment lock for this project
# here bundler will read the Gemfile, load the settings and generate the Gemfile.lock
$ bundle install 
```

5. build the page and start a local server.
```bash
$ bundle exec jekyll serve
# or, if you read the makefile, you can just run:
$ make all 
```

6. link to the local server and do some modificaiton.
>Every modification will trigger the compilation, so you can see the result at once in your browser after refresh. 

## More tips

There are several tools(sass, Liquid...) used in these pages.

The main style settings are in _sass.

You can get more info in [sass](https://sass-lang.com/). 
