#!/bin/bash
export PATH=$PATH:~/bin
GEM=`find /usr -name gem 2>/dev/null | head -1`
echo $GEM
# Script to setup our environment
if !(`$GEM list bundler -i`); then
    $GEM install bundler
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