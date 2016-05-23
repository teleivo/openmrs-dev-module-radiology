#!/bin/bash
mvn openmrs-sdk:setup-platform -DserverId=platform2 -Dversion=2.0.0-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=providermanagement -Dversion=2.3
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=uiframework -Dversion=3.4
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=uilibrary -Dversion=1.5
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=emrapi -Dversion=1.13
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs -DartifactId=event -Dversion=2.2.1
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=reporting -Dversion=0.9.8.1
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=htmlwidgets -Dversion=1.7.0
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=calculation -Dversion=1.1
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=serialization.xstream -Dversion=0.2.9
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=metadatasharing -Dversion=1.1.9
mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs.module -DartifactId=metadatamapping -Dversion=1.0.1

