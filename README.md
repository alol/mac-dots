# MacDots: Dotfiles for your Mac

Dotfiles for Z-Shell on a Mac. Simples.

## Preparation

Although you will be prompted to overwrite any existing dotfiles during instalation, it's still a good idea to backup any of your existing dotfiles should you wish to undo anything.

    cp ~/.zshrc ~/Desktop

Do the same for any other files you want to backup.

To keep any custom or personal bash settings, see the `Customization` section below.

#### oh-my-zsh

Ensure you have **oh-my-zsh** installed. I use my own fork of the project, although the original project will almost certainly work too.

[https://github.com/edjames/oh-my-zsh](https://github.com/edjames/oh-my-zsh)

## Installation

    cd ~
    git clone git://github.com/edjames/mac-dots ~/.mac-dots
    cd ~/.mac-dots
    ./script/bootstrap

You will be prompted before any existing files are overwritten. Symlinks are created for each dotfile in this project.

## Usage

Coming soon...

## Updating

Run this command in a terminal. This is the same command that the automated updater uses, so you can run this any time you like.

    upgrade_macdots

## Customization

It is possible to customize your zsh environment even further by putting things in one of the following two files (typically you'd use these for custom environment settings and variables):

    ${HOME}/.before-mac-dots
    ${HOME}/.after-mac-dots

As their respective names indicate, these files are executed **before** and **after** the environment is initialized.

These two files are **not** created automatically. If you need them, create them.

**Git Tip**

To make updates easier, put the following environment variables into your
`.before-mac-dots` file so that you don't have to type them out during an update:

    export GIT_NAME="<your name>"
    export GIT_EMAIL="<your email>"

## Contributing to mac-dots

If you want to contribute:

* Check out the latest master to make sure the feature hasn’t been implemented or the bug hasn’t been fixed yet
* Check out the issue tracker to make sure someone already hasn’t requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Do NOT change the VERSION file.

## Credits

Some of my stuff has been shamelessly lifted, some has been modified, some is my own, but credit where it's due...

* [Peter Vandenberk (pvdb)](https://github.com/pvdb) and his (unfortunately private) sbrc project.
* [Ryan Bates (ryanb)](https://github.com/ryanb) of RailsCasts fame, and his own [dotfiles](https://github.com/ryanb/dotfiles) project.
* [Zach Holman (holman)](https://github.com/holman) and his own [dotfiles](https://github.com/holman/dotfiles) project.

## Copyright

Copyright (c) 2013 Ed James. See LICENSE for details.
