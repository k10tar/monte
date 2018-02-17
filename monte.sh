#!/bin/bash


var=10
list=(`ps aux | grep temper |grep -v grep | awk '{print $2}'`)


#echo ${#list[@]};

if [ ${#list[@]} -gt $var ] ; then

    for pid in ${list[@]};
    do
        #echo $pid;
        kill $pid;
    done

fi
