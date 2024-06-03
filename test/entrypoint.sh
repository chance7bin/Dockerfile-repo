#!/bin/bash

# This script is the entrypoint for the container. It is run when the container is started.

# output "starting entrypoint.sh" to /var/log/entrypoint.log
echo "starting entrypoint.sh" >> /var/log/entrypoint.log

# no exit container
tail -f /dev/null
