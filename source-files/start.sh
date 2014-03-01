#!/bin/bash
chown -R postgres:postgres /var/lib/pgsql/data
chmod -R 0700 /var/lib/pgsql/data
su postgres -c "postgres -D /var/lib/pgsql/data -c listen_addresses=*"