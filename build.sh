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

# Remove existing node_modules and package-lock.json
rm -rf node_modules package-lock.json

# Install Angular CLI globally
npm install -g @angular/cli@19.2.4

# Install dependencies with exact versions
npm install --legacy-peer-deps

# Install Angular build tools with exact versions
npm install --save-dev @angular-devkit/build-angular@19.2.4 @angular-devkit/architect@0.1902.4 --legacy-peer-deps

# Install Angular core packages
npm install --save @angular/core@19.2.4 @angular/common@19.2.4 @angular/platform-browser@19.2.4 @angular/platform-browser-dynamic@19.2.4 --legacy-peer-deps

# Build the application
ng build --configuration=production 