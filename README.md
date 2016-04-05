# Soren’s CS Lab Scripts

This repository lives in `~bjornsta/bin` on the St. Olaf users directory. Anyone with lab access can copy or run scripts directly from that directory (just do `~bjornsta/bin/scriptname.sh <arguments>`).

## Script descriptions
* **cs241\_setup**: Bash version of the csh script for Hardware Design. (If you’re not sure what that is, you don’t need it.)
* **fix\_lockfiles**: Delete old Firefox lockfiles preventing Firefox from opening without having to remember the directories or commands. Just run the script and try again.
* **print\_rns202**: Works on Linux and will probably work on OS X. Copy this script onto your personal machine and set the `SSHTO` variable at the top of the file to the string you use to ssh to a CS lab computer (e.g., `bjornsta@rns202-6.cs.stolaf.edu`). You can now use `printrns202.sh filename` to print a file directly to the CS lab printer from your personal machine.
* **timer_table**: For Algorithms, try running several executables with various input sizes and keep track of the number of cycles they take to run. See `timerTable.sh --help` for further information.
* **warn_quota**: Check to make sure you aren’t approaching your quota. The best way to use this is to put it in your `~/.cshrc` or `~/.bashrc` so that it runs the check every time you open a terminal. (If you’re not close to your quota, there is no output at all, so it won’t be annoying.) You can just place `~bjornsta/bin/quotachk.sh` at the end of the file to start using it.

(Some of these scripts were renamed when I cleaned this up for StoDevX; all of
those that I think other people were using have had aliases and warning
messages added.)

## Bugs
Send bug reports or questions to `bjornsta@stolaf.edu`.
