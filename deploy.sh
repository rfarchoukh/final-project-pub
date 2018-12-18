#!/bin/bash

echo "Hello world!"
echo ""
echo "Testing gcloud..."
/home/centos/google-cloud-sdk/bin/gcloud compute instances describe ansible-server --zone us-east1-b

exit 0
