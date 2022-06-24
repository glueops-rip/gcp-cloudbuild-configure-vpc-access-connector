#!/bin/bash

if [ $1 == "true" ]; then
    printf "vpc_access_connector:\n" >> app.yaml
    printf "  name: projects/$2/locations/$3/connectors/vpc-access-connector\n" >> app.yaml
    printf "  egress_setting: all-traffic\n" >> app.yaml
    printf "env_variables:\n" >> app.yaml
    printf "  GAE_USE_SOCKETS_HTTPLIB: 'anyvalue'\n" >> app.yaml
else
    printf "env_variables:\n" >> app.yaml
fi
