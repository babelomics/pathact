#!/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

OPTS=`getopt -l working_folder: -n 'parse-options' -- "$@"`

if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1 ; fi

while true; do
  case "$1" in
    --working_folder ) WORKING_FOLDER="$2"; shift; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done


echo $WORKING_FOLDER

cp "$WORKING_FOLDER"/sifs4CellMaps_init/* "$WORKING_FOLDER"/sifs4CellMaps/
cp "$WORKING_FOLDER"/sifs4CellMaps_init/path_info.json "$WORKING_FOLDER"/
cp "$WORKING_FOLDER"/sifs4CellMaps_init/report.xml "$WORKING_FOLDER"/
cp /dev/null "$WORKING_FOLDER"/ko.txt


