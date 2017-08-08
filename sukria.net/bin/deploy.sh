#!/bin/bash

set -e

git push origin master
hugo 
rsync -e "ssh -p 1979" -avz --delete public/ sukria@tzeentch.sukria.net:/srv/sukria.net/www.sukria.net/
