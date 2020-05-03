#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

export WORK_DIR="/tmp/recon/"
export ARTIFACT_NAME=nwsl-mServiceAccounts-offlineChecker.tar.gz

mkdir $WORK_DIR

curl --url $SPARK_RECON_JOBURL \
     --output "$WORK_DIR/$ARTIFACT_NAME"

tar -xf "$WORK_DIR/$ARTIFACT_NAME" -C $WORK_DIR

cd $WORK_DIR
echo "starting spark job now ....."

bash $WORK_DIR/bin/run-recon.sh

echo "Job completed, exiting now ....."
exit 0
