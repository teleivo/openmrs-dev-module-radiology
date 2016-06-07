#!/bin/bash

# == step 2
# == install first batch modules with dependencies 

# uilibrary needs uiframework
mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=uilibrary -Dversion=2.0.5-SNAPSHOT

# needs metadatamapping
mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=metadatasharing -Dversion=1.2.1-SNAPSHOT

# reporting needs htmlwidgets, serialization, calculation
mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=reporting -Dversion=0.9.10-SNAPSHOT

