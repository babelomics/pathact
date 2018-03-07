#!/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

Rscript $SCRIPTDIR/prettyways/ko_cli_update.r $@

