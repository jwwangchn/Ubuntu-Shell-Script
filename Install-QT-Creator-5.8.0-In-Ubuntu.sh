# download source file
wget http://download.qt.io/official_releases/qt/5.8/5.8.0/qt-opensource-linux-x64-5.8.0.run

# install dependence
sudo apt-get install build-essential
sudo apt-get install libfontconfig1

# adjust permission and run the install
chmod +x qt-opensource-linux-x64-5.8.0.run
./qt-opensource-linux-x64-5.8.0.run

# Reference
# Install Qt 5 on Ubuntu  https://wiki.qt.io/Install_Qt_5_on_Ubuntu
