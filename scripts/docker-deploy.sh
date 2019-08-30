#!/bin/bash
docker login -u $DOCKERUSER -p $DOCKERPASS
docker tag bsycorp/goaws:${TRAVIS_BRANCH} bsycorp/goaws:latest
docker push bsycorp/goaws