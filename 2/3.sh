#!/bin/bash

{
echo "Root - пользователи: "
grep 'sudo' /etc/group
} > rootusers.txt
