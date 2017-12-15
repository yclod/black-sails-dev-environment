sudo apt-get update
sudo apt-get install python
# install python3.4, and pip3.4
sudo apt-get install python-software-properties -y
echo | sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python3.4 -y
sudo python3.4 /home/vagrant/thirdparty/get-pip.py

#install and setup emcas25
echo | sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install emacs25 -y
mkdir /home/vagrant/.emacs.d
cp thirdparty/init.el /home/vagrant/.emacs.d/init.el
cp -r thirdparty/themes /home/vagrant/.emacs.d/


