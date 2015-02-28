#!/usr/bin/env bash

vagrant ssh -- npm start /home/vagrant/angular-phonecat

echo "Point your browser at http://127.0.0.1:20080/app/index.html"

# OK, ending node app just a bit forcibly
vagrant ssh -- pkill node
