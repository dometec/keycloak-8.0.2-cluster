#!/bin/bash

# Gestione docker network host

/opt/jboss/wait-for-it.sh $DB_ADDR:$DB_PORT -t 12
 
SERVER_IP=`hostname --ip-address`

exec /opt/jboss/tools/docker-entrypoint.sh -b ${SERVER_IP} -bmanagement ${SERVER_IP} -bprivate ${SERVER_IP} --debug 
