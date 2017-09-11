# Set your Locale
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

# Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Installation
sudo apt-get update
sudo apt-get install ros-indigo-desktop

# Initialize rosdep
sudo apt-get install python-rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Getting rosinstall
sudo apt-get install python-rosinstall
