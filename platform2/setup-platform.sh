#!/bin/bash
mvn openmrs-sdk:setup-platform \
    -DserverId="platform2" \
    -Dversion="2.0.0-SNAPSHOT" \
    -DdbUser="openmrs" \
    -DdbPassword="openmrs" \
    -DdbDriver="mysql" \
    -DdbUri="jdbc:mysql://localhost:3306/openmrs116?autoReconnect=true&sessionVariables=storage_engine=InnoDB&useUnicode=true&characterEncoding=UTF-8"

cp installation.properties "$USERPROFILE/openmrs/platform2"

