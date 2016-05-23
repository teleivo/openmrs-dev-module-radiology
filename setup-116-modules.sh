#!/bin/bash

# == modules with no dependencies
# cant directly install serialization.xstream using SDK since its uploaded with extension .omod instead of .jar
# therefore SDK cannot find it
wget "http://mavenrepo.openmrs.org/nexus/content/repositories/modules/org/openmrs/module/serialization.xstream-omod/0.2.9/serialization.xstream-omod-0.2.9.omod" && mvn install:install-file -DartifactId=serialization.xstream-omod -Dversion=0.2.9 -Dpackaging=jar -Dfile=serialization.xstream-omod-0.2.9.omod && mvn openmrs-sdk:install -DserverId=116 -DartifactId=serialization.xstream -Dversion=0.2.9

mvn openmrs-sdk:install -DserverId=116 -DartifactId=webservices.rest -Dversion=2.14

mvn openmrs-sdk:install -DserverId=116 -DartifactId=calculation -Dversion=1.1

mvn openmrs-sdk:install -DserverId=116 -DgroupId=org.openmrs -DartifactId=event -Dversion=2.2.1

mvn openmrs-sdk:install -DserverId=116 -DartifactId=uiframework -Dversion=3.4

mvn openmrs-sdk:install -DserverId=116 -DartifactId=htmlwidgets -Dversion=1.7.0

mvn openmrs-sdk:install -DserverId=116 -DartifactId=metadatamapping -Dversion=1.0.1

# == modules with dependencies

# == step 1

# uilibrary needs uiframework
mvn openmrs-sdk:install -DserverId=116 -DartifactId=uilibrary -Dversion=1.5

# needs metadatamapping
mvn openmrs-sdk:install -DserverId=116 -DartifactId=metadatasharing -Dversion=1.1.9

# reporting needs htmlwidgets, serialization, calculation
mvn openmrs-sdk:install -DserverId=116 -DartifactId=reporting -Dversion=0.9.8.1

# == step 2

# providermanagement needs uiframework & uilibrary
mvn openmrs-sdk:install -DserverId=116 -DartifactId=providermanagement -Dversion=2.3

# == step 3

# emrapi needs most of the above
mvn openmrs-sdk:install -DserverId=116 -DartifactId=emrapi -Dversion=1.13

