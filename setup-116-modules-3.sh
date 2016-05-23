#!/bin/bash


# == step 3
# == install next batch modules with dependencies 

# providermanagement needs uiframework & uilibrary
mvn openmrs-sdk:install -DserverId=116 -DartifactId=providermanagement -Dversion=2.3

# == step 3

# emrapi needs most of the above
mvn openmrs-sdk:install -DserverId=116 -DartifactId=emrapi -Dversion=1.13

