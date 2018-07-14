# 安装工具
sudo apt-get install gdebi

# 搜狗拼音
sudo gdebi sogoupinyin_2.2.0.0102_amd64.deb

# 设置工具
sudo apt-get install unity-tweak-tool
# 可以设置黑色主题
sudo apt-get install gnome-tweak-tool

#主题
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme

#图标
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

# 终端zsh
sudo apt-get install zsh
sudo apt-get install git
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh
