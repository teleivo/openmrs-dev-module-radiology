#!/bin/bash


# == step 3
# == install next batch modules with dependencies 

# providermanagement needs uiframework & uilibrary
mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=providermanagement -Dversion=2.5-SNAPSHOT

