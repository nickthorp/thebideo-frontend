#!/bin/bash
export PATH=$PATH:~/bin

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