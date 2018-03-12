mkdir bin32 & pushd bin32
cmake .. -DBUILD_SHARED_LIBS=ON
popd
mkdir bin64 & pushd bin64
cmake -G "Visual Studio 15 2017 Win64" .. -DBUILD_SHARED_LIBS=ON
popd
cmake --build bin32 --config Release
cmake --build bin64 --config Release
