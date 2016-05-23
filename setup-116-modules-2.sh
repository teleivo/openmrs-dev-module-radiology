#!/bin/bash

# == step 2
# == install first batch modules with dependencies 

# uilibrary needs uiframework
mvn openmrs-sdk:install -DserverId=116 -DartifactId=uilibrary -Dversion=1.5

# needs metadatamapping
mvn openmrs-sdk:install -DserverId=116 -DartifactId=metadatasharing -Dversion=1.1.9

# reporting needs htmlwidgets, serialization, calculation
mvn openmrs-sdk:install -DserverId=116 -DartifactId=reporting -Dversion=0.9.8.1

