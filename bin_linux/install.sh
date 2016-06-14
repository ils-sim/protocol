wget https://github.com/google/protobuf/releases/download/v3.0.0-beta-3/protobuf-cpp-3.0.0-beta-3.zip
unzip protobuf-cpp-3.0.0-beta-3.zip
cd protobuf-3.0.0-beta-3/
./configure
make
make check
sudo make install
