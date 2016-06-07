#!/bin/bash

# == step 4
# == install emrapi which needs most of the dependencies from previous scripts
mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=emrapi -Dversion=1.14-SNAPSHOT

