#!/bin/bash
# %%% Print a file to the rns202 printer by piping over ssh

SSHTO="cslab"

die() {
    echo "$1"
    exit 1
}

[ -z "$1" ] && die "Usage: `basename $0` file-to-print"
[ -f "$1" ] || die "The file you specified does not exist!"
cat "$1" | ssh $SSHTO 'cat - | lpr -Pdept-rns202'
