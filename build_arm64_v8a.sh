export NDK=/home/hunter/Android/ndk-toolchain
# Add the standalone toolchain to the search path.
export PATH=$PATH:$NDK/bin

# Tell configure what tools to use.
export CC=aarch64-linux-android23-clang
export CXX=aarch64-linux-android23-clang++
export AR=arm-linux-androideabi-ar

# Tell configure what flags Android requires.
export CFLAGS="-fPIE -fPIC"
export LDFLAGS="-pie -L$NDK/sysroot/usr/local/lib"

# Run autogen.sh
tool/autogen.sh

# make a sub folder and enter it
# mkdir android_arm64_v8a -p && cd android_arm64_v8a 

#run configure
./configure --host=aarch64-linux-android

#make and install
make -j V=0 && make install DESTDIR=$NDK/sysroot

