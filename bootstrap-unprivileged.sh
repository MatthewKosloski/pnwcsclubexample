# Install the Node.js Version Manager
# Learn more: https://github.com/nvm-sh/nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Use nvm without refreshing the terminal window
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Download, compile, and install the latest release of node and npm
nvm install node

# Install Surge using npm, the CLI for a free hosting service 
# for static sites.  Learn more: https://surge.sh/
npm install --global surge