#!/bin/bash
mvn openmrs-sdk:setup-platform -DserverId=platform2 -Dversion=2.0.0-SNAPSHOT
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=legacyui -Dversion=1.0-SNAPSHOT

#mvn openmrs-sdk:setup-platform -DserverId=platform2 -Dversion=2.0.0-alpha
#mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=legacyui -Dversion=0.2
