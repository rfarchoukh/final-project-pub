#!/bin/bash

echo "Hello world!"

if [ "${BRANCH_NAME}" == "dev" ]; then
	echo "The current branch is ${BRANCH_NAME}"
elif [ "${BRANCH_NAME}" == "stage" ]; then
	echo "The current branch is ${BRANCH_NAME}"
elif [ "${BRANCH_NAME}" == "master" ]; then
        echo "The current branch is ${BRANCH_NAME}"
else
	echo "Invalid branch, SOMEHOW."
fi

exit 0
