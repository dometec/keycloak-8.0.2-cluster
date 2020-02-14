FROM jboss/keycloak:8.0.2

LABEL maintainer="Domenico Briganti <domenico.brianti@osys.it>"

USER root

RUN microdnf install -y net-tools which findutils
RUN /opt/jboss/keycloak/bin/add-user.sh admin ltuitgj4sdfi0e86e3 --silent

ADD entrypoint.sh /opt/jboss/entrypoint.sh
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /opt/jboss/wait-for-it.sh
RUN chmod +x /opt/jboss/*.sh

COPY keycloak-metrics-spi-1.0.3.jar /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-1.0.3.jar
ADD JDBC_PING.cli /opt/jboss/tools/cli/jgroups/discovery/JDBC_PING.cli

ENTRYPOINT ["/opt/jboss/entrypoint.sh"]
