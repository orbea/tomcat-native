#! /bin/sh
# mkinstalldirs --- make directory hierarchy
# Author: Noah Friedman <friedman@prep.ai.mit.edu>
# Created: 1993-05-16
# Public domain

# $Id$

errstatus=0
dirmode=""

usage="\
Usage: mkinstalldirs [-h] [--help] [-m mode] dir ..."

# process command line arguments
while test $# -gt 0 ; do
   case "${1}" in
     -h | --help | --h* )			# -h for help
        echo "${usage}" 1>&2; exit 0 ;;
     -m )					# -m PERM arg
        shift
        test $# -eq 0 && { echo "${usage}" 1>&2; exit 1; }
        dirmode="${1}"
        shift ;;
     -- ) shift; break ;;			# stop option processing
     -* ) echo "${usage}" 1>&2; exit 1 ;;	# unknown option
     * )  break ;;				# first non-opt arg
   esac
done

for file
do
   set fnord `echo ":$file" | sed -ne 's/^:\//#/;s/^://;s/\// /g;s/^#/\//;p'`
   shift

   pathcomp=
   for d
   do
     pathcomp="$pathcomp$d"
     case "$pathcomp" in
       -* ) pathcomp=./$pathcomp ;;
     esac

     if test ! -d "$pathcomp"; then
        echo "mkdir $pathcomp"

        mkdir "$pathcomp" || lasterr=$?

        if test ! -d "$pathcomp"; then
  	  errstatus=$lasterr
	else
	  if test ! -z "$dirmode"; then
	     echo "chmod $dirmode $pathcomp"

	     lasterr=""
	     chmod $dirmode "$pathcomp" || lasterr=$?

	     if test ! -z "$lasterr"; then
	       errstatus=$lasterr
	     fi
	  fi
        fi
     fi

     pathcomp="$pathcomp/"
   done
done

exit $errstatus

# Local Variables:
# mode:shell-script
# sh-indentation:3
# End:
