#!/bin/bash

test -z "${MONGO_DB}" && echo "Please set MONGO_DB environment variable for DB initialization" && exit 1
test -z "${MONGO_USER}" && echo "Please set MONGO_USER environment variable for DB initialization" && exit 1
test -z "${MONGO_PASSWORD}" && echo "Please set MONGO_PASSWORD environment variable for DB initialization" && exit 1

"${mongo[@]}" "${MONGO_DB}" <<-EOJS
    db.getSiblingDB("admin").createUser({
        user: $(_js_escape "${MONGO_USER}"),
        pwd: $(_js_escape "${MONGO_PASSWORD}"),
        roles: [{role: "readWrite", db: $(_js_escape "${MONGO_DB}")}],
        mechanisms:["SCRAM-SHA-1"]
});
EOJS

