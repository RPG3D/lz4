#!/bin/(shell)
echo $ANDROID_NDK_HOME

export NDK_ROOT=$ANDROID_NDK_HOME

if [ ! -d "NDKBuild" ]; then
  sudo mkdir NDKBuild
fi

export PB_SOURCE=$(pwd)
echo $PB_SOURCE

cd NDKBuild


sudo cmake -G "Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE=$NDK_ROOT/build/cmake/android.toolchain.cmake -DCMAKE_MAKE_PROGRAM=$NDK_ROOT/prebuilt/darwin-x86_64/bin/make -DANDROID_STL=c++_shared   $PB_SOURCE

sudo cmake --build . -t libprotobuf-lite --config Release
