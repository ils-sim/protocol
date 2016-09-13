#!/usr/bin/env sh
set -ex

if [ ! -d "$HOME/protobuf/lib" ]; then
	wget https://github.com/google/protobuf/releases/download/v3.0.0-beta-3/protobuf-cpp-3.0.0-beta-3.zip
	unzip protobuf-cpp-3.0.0-beta-3.zip
	cd protobuf-3.0.0-beta-3/
	./configure --prefix=$HOME/protobuf
	make
	sudo make install
else
  echo "Using cached directory."
fi
