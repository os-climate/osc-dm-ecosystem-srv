#!/bin/bash

#####
#
# environment.sh - Setup common environment variables
#
# Author: Eric Broda, eric.broda@brodagroupsoftware.com, August 13, 2023
#
# Parameters:
#   N/A
#
#####

if [ -z ${HOME_DIR+x} ] ; then
    echo "HOME_DIR environment variable has not been set (should be setup in your profile)"
    exit 1
fi

export ROOT_DIR="$HOME_DIR/osc-dm-ecosystem-srv"
export PROJECT="osc-dm-mesh-srv"
export PROJECT_DIR="$ROOT_DIR/$PROJECT"

# To support etcd3 in python CLI
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION="python"

#####
# NOTE:
# Data directory should point to the directory
# containing data products.  This is set to the
# the workspace samples directory by default.
#####
export DATA_DIR="$ROOT_DIR/osc-dm-samples-dat"

$PROJECT_DIR/bin/show.sh