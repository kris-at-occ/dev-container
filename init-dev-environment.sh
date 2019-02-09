#!/bin/bash

# Install some nice utilities
apt-get update
apt-get install -y tree

# Install Python requirements
pip install -r requirements.txt
