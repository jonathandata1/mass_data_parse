#! /bin/bash
# Author: Jonathan Scott
# Date: 08/31/2021
#
# Description:
# Parse through massive amounts of data lightning fast and extract all urls, sorting them and making sure they are all unique excluding all duplicates
# For every 20GB of data you have it will take you 10 minutes to parse!
# Dependencies: brew install pup sfk

sfk xfind . "_*_" | pup 'a[href] attr{href}' | grep -E '(.+\.)+.+\..+$' | LC_ALL=C sort | LC_ALL=C uniq | tee output.txt