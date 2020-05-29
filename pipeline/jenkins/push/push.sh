#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u faresyoussef -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG faresyoussef/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push faresyoussef/$IMAGE:$BUILD_TAG
