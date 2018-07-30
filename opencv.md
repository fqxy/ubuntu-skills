## [1.OpenCV 源码](https://github.com/opencv)
```sh
# https://github.com/opencv/opencv/releases
# https://github.com/opencv/opencv_contrib/releases

cd ~/Downloads/
unzip opencv-3.3.1.zip
unzip opencv_contrib-3.3.1.zip
```

## 2.依赖
```sh
sudo apt-get update

sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
```

## [3.opencv_3rdparty](https://github.com/opencv/opencv_3rdparty)
```sh
# 下载 ippicv_2017u3_lnx_intel64_general_20170822.tgz
vim /home/fq/Downloads/opencv-3.3.1/3rdparty/ippicv/ippicv.cmake

# 改47行
# "https://raw.githubusercontent.com/opencv/opencv_3rdparty/${IPPICV_COMMIT}/ippicv/"
# file:///home/fq/Downloads/

```

## 4.编译
```sh
sudo apt-get install cmake-qt-gui
cd ~/Downloads/opencv-3.3.1
mkdir build
cd build
cmake-gui ..

# Configure

# CMAKE_BUILD_TYPE = RELEASE
# CMAKE_INSTALL_PREFIX = /usr/local/opencv331
# OPENCV_EXTRA_MODULES_PATH = /home/fq/Downloads/opencv_contrib-3.3.1/modules

# Generate

make
sudo make install
```

## 5.CMakeLists.txt
```sh
# cmake needs this line
cmake_minimum_required(VERSION 2.8)

# Define project name
project(opencv_example_project)

set(OpenCV_DIR "/usr/local/opencv331/share/OpenCV")

# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Declare the executable target built from your sources
add_executable(opencv_example example.cpp)

# Link your application with OpenCV libraries
target_link_libraries(opencv_example ${OpenCV_LIBS})
```