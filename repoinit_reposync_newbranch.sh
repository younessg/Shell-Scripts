#!/bin/bash

echo ""
echo "Repo init & repo sync a new project/branch"
echo "------------------------------------------"
echo ""
echo -n "Enter project/branch name: "
read branch
echo ""
repo init -u git://review.sonyericsson.net/platform/manifest.git -b $branch

echo ""
echo "Starting repo sync for $branch"
echo ""
repo sync -j11
echo ""

echo "Environment setup & product lunching"
echo "------------------------------------"
source build/envsetup.sh && lunch
echo ""
