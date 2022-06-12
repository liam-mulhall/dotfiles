# Dotfiles

This repo is for configuration files and other sundries that I like to keep in
version control.

## Prerequisites

Install GNU Stow using your package manager.

## Installation

Clone this repo to your home directory as `.dotfiles`.

## Usage

* Use `stow foo` to create symlinks for file `foo`.
* Use `stow */` to create symlinks for each directory.

## How to Track a Directory or File

Suppose you want to track a directory called `bar`. Normally, the `bar`
directory would go in the `~/.config` directory.

```
~
|_.config
  |_bar
    |_file.txt
    |_subdirA
    |_subdirB
    |_subdirC
```

Navigate to your dotfiles repo. Make a directory for `bar`. We can name this
directory anything we want. For the sake of simplicity, we will name this
directory `bar` as well.

```
~
|_.dotfiles
  |_bar
```

Within the new `bar` directory, we simply pretend we are in the home directory.

```
~
|_.dotfiles
  |_bar            <-- notice how bar is the same as the home directory
    |_.config
      |_bar
        |_file.txt
        |_subdirA
        |_subdirB
        |_subdirC
```

If we are in the root of the `.dotfiles` directory, we can issue the command
`stow bar` to create symlinks for `bar` in the home directory.

To delete a configuration, simply `rm` the file or directory you want to delete.
