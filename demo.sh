#!/usr/bin/env sh
# @brief:  demo of toggle.sh
# @usage:  sh ./demo.sh

# create/prepare test environment
echo 'a - original' > a
echo 'a - 1' > a.1
echo 'a - 2' > a.2

echo 'b - original' > b
echo 'b - 1' > b.1
echo 'b - 2' > b.2

echo 'c - original' > c
echo 'c - 1' > c.1
echo 'c - 2' > c.2

echo '$ ls'
ls

echo '$ . toggle.sh 1 2 a'
. toggle.sh 1 2 a

echo '$ ls'
ls

echo '$ . toggle.sh 2 1 a'
. toggle.sh 2 1 a

echo '$ ls'
ls

echo '$ . toggle.sh 1 2 a b'
. toggle.sh 1 2 a b

echo '$ ls'
ls

echo '$ . toggle.sh 2 1 a b c'
. toggle.sh 2 1 a b c

echo '$ ls'
ls

