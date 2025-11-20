#!/bin/bash

# 1. Create the password file using Environment Variables
# We will set TABPY_USERNAME and TABPY_PASSWORD in the Render dashboard later.
tabpy-user add -u $TABPY_USERNAME -p $TABPY_PASSWORD -f /opt/render/project/src/passwd.txt

# 2. Start TabPy using the port Render assigns ($PORT)
export TABPY_PORT=$PORT
tabpy --config=tabpy.conf