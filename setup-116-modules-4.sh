#!/bin/bash

# == step 4
# == install emrapi which needs most of the dependencies from previous scripts
mvn openmrs-sdk:install -DserverId=116 -DartifactId=emrapi -Dversion=1.13

