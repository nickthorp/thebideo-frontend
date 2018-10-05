#!/bin/bash
export PATH=$PATH:~/bin
#~/.bash_profile
whoami
who am i
echo $PATH
echo $GEM_HOME
which gem
gem list bundler -i
# Script to setup our environment
if !(`gem list bundler -i`); then
    gem install bundler
fi

pushd ..
echo "Installing gems..."
bundle install
echo "Gem install complete!"
pushd assets
echo "Copying media assets into workspace..."
cp -rfv /usr/share/nginx/thebideo/* .
echo "Done!"
popd 
popd