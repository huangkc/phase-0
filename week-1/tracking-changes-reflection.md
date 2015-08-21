## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier? 
Being able to track and add changes means developers can work on the same project at the same time without overwriting each other’s work. With the history of the changes saved, developers do not have to start over if they need to go back to a previous version for any reason (for example, if bugs are accidentally introduced). 
- What is a commit? 
A commit records the bundle of changes to the project files so they can be accessed at any time.

- What are the best practices for commit messages? 
A commit message should be less than 50 characters long. The first letter should be capitalized and the message should include a short description of and the motivation for the change. The present tense should be used in the body of the message. 

- What does the HEAD^ argument mean? 
HEAD^ is the last commit.

- What are the 3 stages of a git change and how do you move a file from one stage to the other? 
The three stages are "untracked," "changes staged," and "committed." Use "git add" to move an untracked file to "staged for commit". Use "git reset HEAD" to move from "staged" back to "untracked". Use "git commit" to commit the changes. Use "git checkout" to undo the changes.


- Write a handy cheatsheet of the commands you need to commit your changes?
git add <filename> = stage changes for commit
git reset HEAD <filename> = unstage changes
git checkout -- <filename> = discard changes in working directory
git commit = commit changes
git commit -m "<commit message>" = commit changes and enter commit message
git commit -v "<commit message>" = commit changes and enter commit message
git log = display commit history
git status = check status of all files in the local repo

- What is a pull request and how do you create and merge one?
Pull requests let other people know that you have changes to be pushed to a repository on GitHub. To make a pull request: create a feature branch from the master branch, push the changes from the feature branch to the origin (the remote repo), find the pull request on GitHub and create it by clicking Create Pull Request, and merge the master branch with the feature branch by clicking Merge Pull Request.

- Why are pull requests preferred when working with teams?
Use pull requests when working with teams so others can review the changes, discuss their impact, propose additional commits, etc. before the changes are implemented.

