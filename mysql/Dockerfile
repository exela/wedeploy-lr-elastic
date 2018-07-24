FROM mysql:5.7

COPY liferay-config.cnf /etc/mysql/conf.d/

COPY --from=healthcheck/mysql /usr/local/bin/docker-healthcheck /usr/local/bin/

HEALTHCHECK CMD ["docker-healthcheck"]