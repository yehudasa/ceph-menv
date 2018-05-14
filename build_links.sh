#!/bin/bash
echo $PWD
for f in `ls $HOME/ceph/build/bin`; do
        echo $f
        ln -sf ../mdo.sh bin/$f
done
