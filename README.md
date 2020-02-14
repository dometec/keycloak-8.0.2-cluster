# keycloak-8.0.2-cluster

Docker compose to start a Keycloak Cluster with JDBC_PING

## Start cluster:

````
$ COMPOSE_PROJECT_NAME=testcluster PASSWORD=mypassword docker-compose -f docker-compose.cluster.yml up --build -d
````