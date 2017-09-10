# install dependencies
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

# download opencv-2.4.13(option)
# wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.13/opencv-2.4.13.zip

# install
cd ~/Downloads
unzip opencv-2.4.13.zip
cd opencv-2.4.13
mkdir build
cd build
 
# compile and install
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_QT=ON -D BUILD_TIFF=ON -D WITH_V4L=ON ..

make all -j8 # 2 cores
sudo make install