
#!/bin/bash
clear
fn=$(basename $0|cut -d. -f1)_$(uname -n)
fn=${fn//[^a-z A-Z 0-9]/_}
fn=${fn//\:/}
fn=${fn//\ /_}
echo $fn

stepone(){
echo $0
df -h
pwd
export
alias
printenv

du  -d 1 -h ../ 
#du /data -h -d 1
#du $dropbox -h -d 1

#find $task -mindepth 1   -maxdepth 1 -type f 

#ls $task -R

}
stepone >${fn}.txt

tail ${fn}.txt

: '
bash $task/fn/rptone.sh

'




