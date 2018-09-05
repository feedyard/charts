#!/usr/bin/env bash

cat <<EOF > backend.conf
bucket="feedyard-state"
prefix="charts/$1"
region="$2"
EOF

    bucket  = "feedyard-state"
    prefix  = "charts"