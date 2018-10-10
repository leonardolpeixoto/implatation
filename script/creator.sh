#!/bin/bash
path_root=$1
project=$2

path_for_creator=$path_root/$project

if [ ! -d $path_for_creator ];then
  git clone https://github.com/leonardolpeixoto/$project.git
fi
