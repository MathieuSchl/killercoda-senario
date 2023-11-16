#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
bash
nvm install 18.13.0
nvm use 18.13.0
nvm alias default 18.13.0
clear
