# Add the standalone toolchain to the search path.
export PATH=$PATH:/home/hunter/Android/ndk-toolchain/bin

# Tell configure what tools to use.
target_host=aarch64-linux-android
export AR=aarch64-linux-android-ar
export AS=$target_host-clang
export CC=aarch64-linux-android23-clang
export CXX=aarch64-linux-android23-clang++
export LD=$target_host-ld
export STRIP=$target_host-strip

# Tell configure what flags Android requires.
export CFLAGS="-fPIE -fPIC"
export LDFLAGS="-pie"

#mkdir android
#cd android 
#../configure --host=$target_host
./configure --host=$target_host

make -j && make install DESTDIR=~/Android/ndk-toolchain/sysroot
