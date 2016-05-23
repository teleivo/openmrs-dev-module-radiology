#!/bin/bash
mvn openmrs-sdk:setup-platform \
    -DserverId="116" \
    -Dversion="1.11.6" \
    -DdbUser="openmrs" \
    -DdbPassword="openmrs" \
    -DdbDriver="mysql" \
    -DdbUri="jdbc:mysql://localhost:3306/openmrs116?autoReconnect=true&sessionVariables=storage_engine=InnoDB&useUnicode=true&characterEncoding=UTF-8"

