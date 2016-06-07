#!/bin/bash

# == step 1 
# == install modules with no dependencies

# cant directly install serialization.xstream using SDK since its uploaded with extension .omod instead of .jar
# therefore SDK cannot find it
# see https://talk.openmrs.org/t/cannot-install-serialization-xstream-via-openmrs-sdk/6395
wget \
"http://mavenrepo.openmrs.org/nexus/content/repositories/modules/org/openmrs/module/serialization.xstream-omod/0.2.9/serialization.xstream-omod-0.2.9.omod" \
&& mvn install:install-file -DgroupId=org.openmrs.module \
-DartifactId=serialization.xstream-omod -Dversion=0.2.11 -Dpackaging=jar \
-Dfile=serialization.xstream-omod-0.2.11.omod && mvn openmrs-sdk:install \
-DserverId=platform2 -DgroupId=org.openmrs.module \
-DartifactId=serialization.xstream -Dversion=0.2.11

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=legacyui -Dversion=1.0-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=webservices.rest -Dversion=2.14

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=calculation -Dversion=1.2-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DgroupId=org.openmrs -DartifactId=event -Dversion=2.5-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=uiframework -Dversion=3.7-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=htmlwidgets -Dversion=1.7.2-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=metadatamapping -Dversion=1.1.0-alpha2-SNAPSHOT

mvn openmrs-sdk:install -DserverId=platform2 -DartifactId=reportingcompatibility -Dversion=2.0.0-SNAPSHOT
