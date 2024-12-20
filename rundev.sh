#!/bin/bash
brew services start mongodb-community

cd ./client && npm run dev | 
sed -e 's/^/[client] /' & 
cd ./api && npm run dev |
sed -e 's/^/[api] /' &&
kill $!