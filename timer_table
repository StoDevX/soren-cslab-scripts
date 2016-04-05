#!/bin/bash

helpmsg () {
    cat <<END
Timer Table: tabulate cycle counts for different inputs
Written by Soren Bjornstad.

Usage: `basename $0` [-n reps] executables : n-values
(e.g. '`basename $0` ./myExe1 ./myExe2 : 100 200 1000 10000')

Your /executables/ should each accept one command-line argument, probably a
number n, and print exactly one number representing the time to stdout. The
number may NOT be in scientific notation (you can cout 'std::fixed' to prevent
this).

This script will run the executable 3 times (can be customized with the -n
option) and average the results to reduce the influence of a busy system or
other anomalies.

The resulting tab-separated table can easily be copied into a spreadsheet or
imported into statistical analysis software.

If you are dealing with large cycle counts, you can use the tabs(1) utility to
change the terminal tab width and improve the display; 'tabs 10', for instance,
will change the tab width to 8 spaces (the default is 10).

END
    exit
}

usagemsg () {
    echo "Usage: `basename $0` [-n reps] executables : n-values"
    echo "(e.g. '`basename $0` ./myExe1 ./myExe2 : 100 200 1000 10000')"
    echo "See `basename $0` --help for further information."
    exit
}

# be sure arguments are valid
[ -z "$1" ] && usagemsg
[ "$1" == "--help" ] && helpmsg

# get optional arguments: right now, just the number of trials to average
reps=3
while getopts n:h opt; do
    case $opt in
    n)
        reps=$OPTARG
        shift; shift
        ;;
    h)
        helpmsg
    esac
done

# unpack executable names
i=0
while [ true ]; do
    [ "$1" == ":" ] && break    # reached delimiter
    [ -z "$1" ]     && usagemsg # user forgot the colon
    if [ ! -x "$1" ]; then
        echo "The file '$1' doesn't appear to be an executable program. Please"
        echo "check your command-line arguments."
        exit
    fi
    executables[i]="$1"
    shift
    i=$((i+1))
done

# unpack n-values
shift # skip colon
i=0
while [ true ]; do
    [ -z "$1" ] && break
    nvalues[i]=$1
    shift
    i=$((i+1))
done

# print table headers
echo -en "\t"
for inputSize in ${nvalues[@]}; do
    echo -en "$inputSize\t"
done
echo ""

# do calls and calculations
for program in ${executables[@]}; do
    echo -en "$program\t"
    for inputSize in ${nvalues[@]}; do
        accumulator=0
        for iteration in $(seq 1 $reps); do
            iterOutput=$($program $inputSize)
            accumulator=$(echo "$accumulator + $iterOutput" | bc -q)
        done
        accumulator=$(echo "$accumulator / $reps" | bc -q)
        echo -en "$accumulator\t"
    done
    echo -e ""
done
