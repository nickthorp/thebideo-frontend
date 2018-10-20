#!/bin/bash
export PATH=$PATH:~/bin

echo "Converting Sass files to CSS..."
bundle exec sass ../_sass/main.scss ../main.css
bundle exec sass ../_sass/contact.scss ../contact.css
echo "Conversion complete."