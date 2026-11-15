#!/bin/sh
fs_tree=$1

# read the OS description file (see os-release(5))
if [ -f "$fs_tree/etc/os-release" ]
then
    . "$fs_tree/etc/os-release"
elif [ -f "$fs_tree/usr/lib/os-release" ]
then
    . "$fs_tree/usr/lib/os-release"
fi

if [ "$ID" = "raspbian" ]
then
    exit 0  # OK
fi

exit 1  # not such a system
