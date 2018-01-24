sudo apt-get update

# install python3.4, and pip3.4
# sudo apt-get install python-software-properties -y
# echo | sudo add-apt-repository ppa:fkrull/deadsnakes
# sudo apt-get update
# # sudo apt-get install python3.4 -y
# sudo python3.4 /home/ubuntu/thirdparty/get-pip.py

#install and setup emcas25
sudo apt-get install silversearcher-ag
echo | sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install emacs25 -y
sudo -u ubuntu mkdir -p /home/ubuntu/.emacs.d
cp thirdparty/init.el /home/ubuntu/.emacs.d/init.el
cp -r thirdparty/themes /home/ubuntu/.emacs.d/

#install Anaconda
curl https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh > /home/ubuntu/thirdparty/Anaconda3-5.0.1-Linux-x86_64.sh
sudo chmod +x /home/ubuntu/thirdparty/Anaconda3-5.0.1-Linux-x86_64.sh
sudo -u ubuntu /home/ubuntu/thirdparty/Anaconda3-5.0.1-Linux-x86_64.sh -b
echo 'export PATH=/home/ubuntu/anaconda3/bin:$PATH' >>/home/ubuntu/.profile
source /home/ubuntu/.profile
conda create --name python27 python=2.7 -y
source activate python27

#install libs for building vnpy
apt-get install -y build-essential libboost-all-dev python-dev cmake


