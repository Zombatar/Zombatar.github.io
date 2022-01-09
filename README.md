## Welcome to S-Group ! 

http://Zombatar.github.io 

(temp, these pages are developed based on xteam.ihep.ac.cn)

### For Developers 

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

