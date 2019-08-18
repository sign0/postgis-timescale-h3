#!/bin/sh




### OTHERS :

# Load uuid-ossp (UUIDV4)
(
    echo "Loading uuid-ossp (UUIDV4) extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp" CASCADE;'
)

# Load hstore
(
    echo "Loading hstore extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS hstore CASCADE;'
)

# Load unaccent
(
    echo "Loading unaccent extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS unaccent CASCADE;'
)

# Load fuzzystrmatch
(
    echo "Loading fuzzystrmatch extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS fuzzystrmatch CASCADE;'
)

# Load pg_stat_statements
(
    echo "Loading pg_stat_statements extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS pg_stat_statements CASCADE;'
)




### POSTGIS :

# Load postgis
(
    echo "Loading postgis extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS postgis CASCADE;'
)

# Load postgis_topology
(
    echo "Loading postgis_topology extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS postgis_topology CASCADE;'
)




### TIMESCALE :

# Load Timescale
(
    echo "Loading Timescale extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;'
)




### UBER H3 :

# Load H3
(
    echo "Loading H3 extension"
    pgxn load h3
    #pgxn load h3 -h 127.0.0.1 -d postgres -U $POSTGRES_USER
)




### CONFIGURATION :

# Tune PG
(
    echo "Tuning PG configuration"
    timescaledb-tune --quiet --yes
)

# Restart PG service
(
    echo "Restart PG service"
    service postgresql restart
)