#!/usr/bin/env sh

echo $0
echo "whoami: " `whoami`
echo "pwd: " `pwd`

echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
set -x
npm run build
set +x

echo "=== set ==="
set

echo
echo "=== env ==="
env

# print every command that executed
set -x
pwd

whoami

set +x
echo 'The following "npm" command runs your Node.js/React application in'
echo 'development mode and makes the application available for web browsing.'
echo 'The "npm start" command has a trailing ampersand so that the command runs'
echo 'as a background process (i.e. asynchronously). Otherwise, this command'
echo 'can pause running builds of CI/CD applications indefinitely. "npm start"'
echo 'is followed by another command that retrieves the process ID (PID) value'
echo 'of the previously run process (i.e. "npm start") and writes this value to'
echo 'the file ".pidfile".'
set -x
cat /etc/os-release

uname -a

npm --version
npm version

npm start &
sleep 1
echo $! > .pidfile

pwd
ls -l
cat .pidfile

ip a

set +x
echo 'Now...'
echo 'Visit http://localhost:3000 or http://localhost:3500 to see your Node.js/React application in action.'
echo '(This is why you specified the "args ''-p 3000:3000''" or "args ''-p 3500:3000''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'

echo 'when you done with ui visit, you can click Proceed below to end the Node.js/React app'
echo ''
