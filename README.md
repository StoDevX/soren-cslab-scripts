# Soren’s CS Lab Scripts

This repository lives in `~bjornsta/bin` on the St. Olaf users directory. Anyone with lab access can copy or run scripts from that directory.

## Script descriptions
* **cs241setup.sh**: Bash version of the csh script for Hardware Design. (If you’re not sure what that is, you don’t need it.)
* **fix\_lockfiles.sh**: Delete old Firefox lockfiles preventing Firefox from opening without having to remember the directories or commands. Just run the script and try again.
* **printrns202.sh**: Works on Linux and will probably work on OS X. Copy this script onto your personal machine and set the `SSHTO` variable at the top of the file to the string you use to ssh to a CS lab computer (e.g., `bjornsta@rns202-6.cs.stolaf.edu`). You can now use `printrns202.sh filename` to print a file directly to the CS lab printer from your personal machine.
* **quotachk.sh**: Check to make sure you aren’t approaching your quota. The best way to use this is to put it in your `~/.cshrc` or `~/.bashrc` so that it runs the check every time you open a terminal. (If you’re not close to your quota, there is no output at all, so it won’t be annoying.) You can just place `~bjornsta/bin/quotachk.sh` at the end of the file to start using it.
* **timerTable.sh**: For Algorithms, try running several executables with various input sizes and keep track of the number of cycles they take to run. See `timerTable.sh --help` for further information.
