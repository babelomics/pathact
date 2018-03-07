#!/bin/bash

#PATH=/opt/R/R-3.1.0/bin:$PATH
#LD_LIBRARY_PATH=/opt/R/R-3.1.0/lib64/R/lib
#INCLUDE=/opt/R/R-3.1.0/lib64/R/include
#C_INCLUDE_PATH=/opt/R/R-3.1.0/lib64/R/include

####
#--go, --uniprot, --decompose, --exp_file exp-path, --design_file design-path --output_folder output-folder

ARGS=$@

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Script directory:"
echo "------------"
echo "$SCRIPTDIR"
echo "------------"
echo ""
echo "command:"
echo "------------"
echo "$0 $@"
echo "------------"
echo ""
echo "------------"
echo "Rscript path"
echo "------------"
which Rscript
echo "------------"


while [[ $# > 1 ]]
do
key="$1"

case $key in
    --exp_file)
    EXP_FILE="$2"
    shift # past argument
    ;;
esac
shift # past argument or value
done

sed -i 's/\r\n/\n/g' $EXP_FILE
sed -i 's/\r/\n/g' $EXP_FILE



Rscript $SCRIPTDIR/prettyways/ko_cli_init.r $ARGS

