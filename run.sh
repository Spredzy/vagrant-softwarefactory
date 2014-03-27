#!/usr/bin/sh

echo "Installing r10k gem...."
if [[ ! `gem list r10k` ]];then
  gem install r10k
fi
echo "Creating modules/ folder..."
mkdir -p modules
echo "Creating manifests/ folder ..."
mkdir -p manifests
echo "Getting the modules..."
PUPPETFILE=./Puppetfile PUPPETFILE_DIR=modules r10k --verbose 3 puppetfile install
echo "Creating default.pp..."
cp modules/softwarefactory/example.pp manifests/default.pp
echo "Everything is done ! Enjoy the Software Factory !"
