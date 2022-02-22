#!/bin/bash
build_for() {
  backend=$1
  rule=$2
  boardsize=$3
  rm CMakeCache.txt 
  export CUDACXX=/usr/local/cuda-11.4/bin/nvcc
  cmake . -DUSE_BACKEND=$backend -DUSE_RULE=$rule -DUSE_BOARDSIZE=$boardsize
  make clean
  make VERBOSE=1
  target_dir=./gomoku-$backend
  rm -rf target_dir
  mkdir -p $target_dir
  binname=`echo "$rule" | tr '[:upper:]' '[:lower:]'`
  if [[ "$boardsize" != "" && "$boardsize" != "15" ]]
  then
      binname=$binname$boardsize"x"
  fi	  
  cp katago $target_dir/$binname
}

build_for_backend() {
  backend=$1
  build_for $backend STANDARD 15
  build_for $backend RENJU 15
  build_for $backend FREESTYLE 15
  build_for $backend FREESTYLE 20
  build_for $backend RENJU 25
}

build_for_backend TENSORRT
build_for_backend OPENCL
build_for_backend CUDA
