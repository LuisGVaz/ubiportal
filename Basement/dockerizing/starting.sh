# From scractch
#  First, copy this file in a new Projects Directory
#  Let's install the pre-requisites
#
#
# Let's install node first.
# Remember:: backsage app builds with npx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

command -v nvm

# Now, installing yarn
npm install --global yarn
yarn --version

# configure yarn to ignore engines check
# otherwise yarn will fail if mismatch package versions
yarn config set ignore-engines true\n

# Installing a new Backstage App
npx @backstage/create-app@latest