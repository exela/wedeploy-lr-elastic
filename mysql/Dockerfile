FROM mysql:5.7

COPY --from=healthcheck/mysql /usr/local/bin/docker-healthcheck /usr/local/bin/

HEALTHCHECK CMD ["docker-healthcheck"]