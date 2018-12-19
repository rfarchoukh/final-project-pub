#!/bin/bash

set -xe

if [ -d ./Final-Project ]; then
	rm -rf ./Final-Project
fi

git clone git@code.harvard.edu:raf375/Final-Project.git

exit 0
