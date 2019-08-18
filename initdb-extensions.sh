#!/bin/sh

# Load Timescale
(
    echo "Loading Timescale extension"
    psql -U $POSTGRES_USER -c 'CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;'
)

# Load H3
(
    echo "Loading H3 extension"
    pgxn load h3
    #pgxn load h3 -h 127.0.0.1 -d postgres -U $POSTGRES_USER
)

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