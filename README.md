== README

This project is built on Ruby 2.0.0, and Rails 4.0.0.

If you are new to Rails, and using Windows, [this](https://github.com/railsinstaller/railsinstaller-windows/releases/download/3.0.0-alpha.2/railsinstaller-3.0.0.exe) installer will give you the correct versions.

#Getting Started with git
To work on this project, you'll want to make a **fork** by clicking the button at the top of this page.  This will make a copy of the repository in your own github account.

You should be redirected to https://github.com/YOURUSERNAME/SEClub

Open up your terminal/command prompt, browse to the directory you want the project in, and type the following, making sure to replace "YOURUSERNAME"

>git clone https://github.com/YOURUSERNAME/SEClub.git

To set up updating for the repository, type

>git remote add upstream https://github.com/htsui/SEClub.git

In the future, to update your repository to keep in sync with the central one (this should be done before you edit any code, if your repository is out of date), type

>git fetch upstream

>git checkout master

>git merge upstream/master

Then make any changes and additions, and when you're ready, you can

>git add .

This adds all files that have been modified in the current directory.

>git commit -m "Put a short message here detailing your changes"

>git push

Then head to http://github.com/YOURUSERNAME/SEClub, and click "pull request" and fill out the form.

![](http://i.imgur.com/OA7ZfVt.png)