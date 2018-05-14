#!/bin/bash
cmd=`basename $0`
if [ "$MRUN_CLUSTER" == "" ]; then
    ~/ceph/build/bin/$cmd "$@"
    exit $?
fi

mrun $MRUN_CLUSTER $cmd "$@"
