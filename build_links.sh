#!/bin/bash

ROOT=$1

[ "$ROOT" == "" ] && ROOT="$HOME/ceph"

echo $PWD
for f in `ls $ROOT/build/bin`; do
        echo $f
        ln -sf ../mdo.sh bin/$f
done

DIR=`dirname $0`
echo "MRUN_CEPH_ROOT=$ROOT" > $DIR/.menvroot
