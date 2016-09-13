#!/bin/bash
set -ex

# public dir's
SRC_DIR=src
CPP_OUT_DIR=cpp_out
CSHARP_OUT_DIR=csharp_out

# private dir's
PROTOC=$HOME/protobuf/bin/protoc

# make output dir
mkdir -p $CPP_OUT_DIR
mkdir -p $CSHARP_OUT_DIR

# foreach all proto files and save output to output-dir
for f in $(find src -iname '*.proto'); do
	echo $f
	$PROTOC -I$SRC_DIR --cpp_out=$CPP_OUT_DIR $f
	$PROTOC -I$SRC_DIR --csharp_out=$CSHARP_OUT_DIR $f
done

