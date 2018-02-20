#!/bin/bash

function exit_hook {
        ps -aux | grep -v grep | grep "python server.py" | awk '{print $2}' | xargs -n 1 kill
}
trap exit_hook EXIT

cd `dirname $0`
ulimit -n 512000
python server.py 2>&1 >/dev/null
