#!/bin/sh

# Replace environment variables in JavaScript
envsubst < /usr/share/nginx/html/env.template.js > /usr/share/nginx/html/env.js

exec "$@"
