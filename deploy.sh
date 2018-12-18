#!/bin/bash

echo "Hello world!"
echo ""
echo "Testing gcloud..."
gcloud compute instances describe ansible-server --zone us-east1-b

exit 0
