# First of all, copy this file into the Backstage App root directory
#
#
yarn install

# Generating the tsc Definitions
yarn tsc

# Build backend and Frontend in the same place.
yarn build:all 

# Now, it's time to build docker image
# Docker file is placed in package/backend/Dockerfile
docker image build . -f packages/backend/Dockerfile --tag erangaeb/waula-backstage:0.1

# push docker image
docker push erangaeb/waula-backstage:0.1