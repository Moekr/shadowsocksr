#!/bin/bash
cd `dirname $0`
ulimit -n 512000
python server.py
