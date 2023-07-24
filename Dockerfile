ARG MONGO_VERSION=5.0.2
FROM mongo:${MONGO_VERSION}

COPY init-mongo/* /docker-entrypoint-initdb.d/
RUN chmod 755  /docker-entrypoint-initdb.d/*.sh

HEALTHCHECK --interval=1m --timeout=30s --start-period=15s --retries=3 \
     CMD echo 'db.runCommand("ping").ok' | mongo $MONGO_DB --quiet | grep '1'
