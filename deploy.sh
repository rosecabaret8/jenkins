#!/bin/bash
#deploy_local.sh

mkdir -p test
cp helloWorld.class test
cd test
java helloWorld
