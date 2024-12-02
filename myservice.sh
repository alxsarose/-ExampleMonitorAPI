#!/bin/bash
start() {
    cd /opt/test_service
    python3 -m http.server 8090 > /dev/null 2> /dev/null &
}
stop() {
    kill -s SIGKILL `ps -ef | grep -i "http.server 8090" | awk '{print $2;}'`
}
case $1 in
    start|stop) "$1" ;;
esac
echo ""
