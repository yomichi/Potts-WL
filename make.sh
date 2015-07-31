#!/bin/sh 

if [ ${CXX}_ = "_" ]; then
  CXX=icpc
  which icpc >/dev/null 2>/dev/null
  if [ $? != 0 ]; then
    CXX=g++
  fi
fi

rm -rf build
mkdir build && cd build

cmake -DCMAKE_CXX_COMPILER=$CXX ../src
make potts
