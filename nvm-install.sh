#!/bin/bash
version=$(curl -sS https://github.com/nvm-sh/nvm/tags | grep 'href="/nvm-sh/nvm/releases/tag/' | head -n 1 | grep -oe '[^ /]*$' | grep -oe '[^ \">]*')
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$version/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
