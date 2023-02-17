# hello-triangle

## Dependencies
Unix systems

### Ubuntu
```
sudo apt install xorg-dev
```

### Fedora
```
sudo dnf install libXcursor-devel libXi-devel libXinerama-devel libXrandr-devel
```

### FreeBSD
```
pkg install xorgproto
```

## Setup
```
mkdir build_release
cd build_release
CC=/usr/lib64/ccache/clang CXX=/usr/lib64/ccache/clang++ cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja hello_triangle
```
