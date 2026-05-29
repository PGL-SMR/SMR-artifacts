#!/usr/bin/env bash

#
# GLOBALS
#
INPUTS=$(find angha/ -name \*.c -print)
PAT="angha/angha.pat"


#
# SCRIPTS
#

# Print patterns IDs and their respective names
#
function listPatterns()
{
  # Get pattern names from .pat file
  PATTERNS=$(grep void $PAT | cut -d' ' -f2 | cut -d'(' -f1 | sed -n 'n;p')

  # Print the equivalent pat number and name
  i=0
  for pattern in ${PATTERNS[@]}; do
    echo "Pat $i -> $pattern"
    ((i=i+1))
  done
  echo ""
}


# Check for PAT matches in input file
#
function runSMR()
{
  for input in ${INPUTS[@]}; do
    echo "----- $input -----"

    filterSmrOutput "$(SMR $input --pat=$PAT -d cil 2> /dev/null)"

  done
}


# Filter only matches from SMR output
#
# $1 - full SMR stdout output
#
function filterSmrOutput()
{
  filtered=$(echo -e "$1" | grep "DDG:.*," --color=never)

  if [[ ! -z "$filtered" ]]; then
    echo "==== Matches ===="
    echo "Info: Pattern number > Match lines"
    
    echo -e "$filtered"
    count=$(echo "$filtered" | grep -o '[0-9]\+,' | wc -l)
    echo "Got $count matches"
    echo ""

  else

    echo "==== No Matches ===="

  fi
}


#
# ENTRYPOINT
#

# show pattenrns names and ids
listPatterns

# check for matches in angha files
runSMR
