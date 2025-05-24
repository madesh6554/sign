#!/bin/bash
set -e

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install and use Node.js
nvm install 20.11.1
nvm use 20.11.1

# Install npm
npm install -g npm@10.0.0

# Clean cache
npm cache clean --force

# Install dependencies
npm install --legacy-peer-deps

# Install Angular CLI
npm install @angular/cli@19.2.5 @angular-devkit/build-angular@19.2.5 --legacy-peer-deps

# Build the application
npm run build 