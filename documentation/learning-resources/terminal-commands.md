---
description: Some of the useful terminal commands in DecriptOS
---

# Terminal Commands for Decripto OS

The terminal is a text-based interface through which you can interact with the Linux operating system. The following commands are fundamental for getting started with the terminal.

## General Commands

**1. `ls` - List files and folders**

This command lists the files and folders in the current directory.

Example:
```
ls
```

You can also use it to preview specific folders or files starting from the full or partial name:

```
ls folder_name
```

```
ls name*
```

```
ls *folder
```

```
ls *name*
```

**2. `cd` - Change directory**

This command allows you to navigate between folders. You can specify an absolute or relative path.

Examples:
```
cd /absolute/path
```

```
cd destination_folder
```

to return to the parent folder
```
cd ..
```

to return to your home directory
```
cd ~
```

```
cd
```

**3. `mkdir` - Create a new folder**

This command creates a new folder in the current directory or a specific location.

Examples:
```
mkdir new_folder
```

```
mkdir /existing/path/new_folder
```

**4. `touch` - Create a new file**

This command creates a new empty file in the current directory or a specific location.

Examples:
```
touch new_file.txt
```

```
touch /existing/path/new_file.txt
```

**5. `rm` - Remove files and folders**

This command removes files and folders. Use with caution as deleted files are permanently removed and not moved to the trash.

Examples:
```
rm file_to_remove.txt
```

```
rm -r folder_to_remove
```

```
rm -d empty_folder_to_remove
```

**6. `cp` - Copy files and folders**

This command copies files and folders from one location to another.

Examples:
```
cp file_to_copy.txt /path/destination
```

```
cp -r folder_to_copy /path/destination
```

**7. `mv` - Move or rename files and folders**

This command moves or renames files and folders.

Examples:
```
mv file_to_move.txt /path/destination
```

```
mv old_name.txt new_name.txt
```

**8. `cat` - Display the content of a file**

This command displays the content of a file on the terminal.

Example:
```
cat file_to_view.txt
```

**9. `grep` - Search inside files**

This command searches for a specific string within one or more files.

Example:
```
grep "word_to_search" reference_file.txt
```

**10. `sudo` - Execute commands as administrator**

This command executes the following command with administrator privileges (sudo = super user do).

Example:
```
sudo apt update
```

```
sudo apt upgrade
```

**11. `open` - Opens a file or folder**

This command opens a file with the default program or a folder.

Example:
```
open folder 
```

open the folder where you are currently
```
open .
```

```
open file.txt
```

**12. `ip addr` - Shows IP address specifications**

Example:
```
ip addr
```

**13. `passwd` - Set the system password**

Example:
```
sudo passwd
```

**13. `ip addr` - Shows IP address specifications**

Example:
```
ip addr
```

**14. `ssh-keygen` - Generating an SSH key**

Example:
```
ssh-keygen -t ed25519 -C [your@email.com]
```

To link GitHub via SSH:

- Create the SSH key
  `ssh-keygen -t ed25519 -C [your@email.com]`

enter the file in which to save the key or skip to keep 
`/home/decripto/.ssh/id_ed25519`

[enter password or skip]

- Copy the SSH key from the .pub file in the `/home/decripto/.ssh/` folder (something like: `ssh-ed25519 AAAAC3NzaCC1.....7kX0J`)

you can enter this command to show your public key:
```
cat .ssh/id_ed25519.pub
```

- Open GitHub and go to settings, SSH, new, paste, and give it a name

**15. `man` - Opens the manual for a command**

Example:
```
man ls (shows the manual for the 'ls' command)
```

```
man mkdir (shows the manual for the 'mkdir' command)
```


# Git Commands to Sync Folders with GitHub

Git is a widely used distributed version control system. Below are some main commands to sync folders with GitHub using Git.

**1. `git init` - Initialize a local Git repository**

This command initializes a new local Git repository in the current directory.

Example:
```
git init
```

Then configure Git with the main branch:
```
git config --global init.default branch main
```

To create or rename the main branch to "main":
```
git branch -M main
```

And configure your credentials for commits:
```
git config --global user.name "your name"
```

```
git config --global user.email [your@email.com]
```

**2. `git clone` - Clone an existing repository**

This command clones an existing Git repository from GitHub into the current directory.

Example:
```
git clone https://github.com/user/repository.git
```

**3. `git status` - Check the folder and file status**

Example:
```
git status
```

**4. `git diff` - Show differences between the last commit and the current file**

It can also be used to show differences between 2 branches with `..`

Example:
```
git diff
```

```
git diff main..other-branch
```

**5. `git add` - Adds files to the repository**

This command adds one or more files to the Git repository.

Example:
```
git add file_to_add.txt
```

Or to add all of them use `add .`

Example:
```
git add .
```

**6. `git commit` - Commit the changes**

This command creates a new commit with the changes made. The `-m` parameter allows you to enter the comment afterward.

Example:
```
git commit -m "Description of changes"
```

Note: if a description for the commit is not added, vim will be opened from the terminal to insert it. Vim is cumbersome, so always insert the message immediately.

To insert the description with vim:
- Press the 'i' key to enter text
- Write the description
- Press Esc to exit insert mode
- Type `:wq` to write and exit 

**7. `git push` - Synchronize remote changes**

This command sends local commits to the remote repository on GitHub.

Example:
```
git push origin branch_name
```

**8. `git pull` - Update the local repository**

This command updates the local repository with changes from the remote repository on GitHub.

Example:
```
git pull origin branch_name
```

These are just a few of the most common commands used in the terminal to work with Git. There are many other commands and options that you can further explore [here](https://training.github.com/downloads/it/github-git-cheat-sheet/).