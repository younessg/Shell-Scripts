#!/bin/bash

echo ""
echo "Repo init & repo sync a new system manifest"
echo "-------------------------------------------"
echo ""
echo -n "Enter system manifest branch name: "
read branch
echo ""
repo init -u git://review.sonyericsson.net/platform/systemmanifest -b $branch

echo ""
echo "Starting repo sync for $branch"
echo ""
repo sync -j11
echo ""

echo "Finihsed synching system manifest for $branch"
echo ""
