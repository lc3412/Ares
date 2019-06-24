#!/bin/bash  
start=`date +%s`
inputDir=$1
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
for dir in $(ls -r $inputDir)
do
${SHELL_FOLDER}/engine-3.0/tsmart.sh --config ${SHELL_FOLDER}/engine-3.0/config/phase/errspec/imchecker.top ${inputDir}"/${dir}"
done
end=`date +%s`
dif=$[ end - start ] 
echo $dif seconds
