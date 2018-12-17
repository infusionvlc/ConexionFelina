# Beginners Guide

If you have any questions, don't hesitate to contact the team via mail or open up an issue. :wink:

## How to properly submit a PR
1. Fork and clone the repo to your computer. If you haven't done it yet, set up the upstream remote `git remote add upstream https://github.com/infusionvlc/ConexionFelina`
3. **Make sure you're on the master branch (`git checkout master`) and you are up to date with `git status`**. If not:
`git pull upstream master`
4. Create a separate branch with the name of the issue you are going to work in with `git checkout -b <branch-name>`
5. Commit your changes.
6. Push the working branch to your remote fork.
7. Make a PR on the upstream master branch with "closes #XX" at it's title to automatically close the issue. **Do not merge it with the master branch on your fork**.
8. If there is anything that needs to be changed it will be commented on the PR.
9. When everything is okay your PR will be merged!
