# postgis-timescale-h3

Dockerized PostgreSQL v11 / PostGIS v2.5 / TimescaleDB v1.4 / Uber H3 (+ PGAdmin 4 + Grafana in docker-compose)

### exposed ports
- :15432 = Postgresql database (internal-hostname:postgis db:postgres user:postgres password:postgis)
- :8500 = PGAdmin 4 (user:pgadmin@localhost password:pgAdmin4)
- :8600 = Grafana (user:admin password:admin)

## Quick start

```bash
git clone https://github.com/sign0/postgis-timescale-h3.git \
&& cd postgis-timescale-h3 \
&& docker-compose up -d
```

## Up

```bash
docker-compose up -d
```

## Stop

```bash
docker-compose stop
```

## Down

```bash
docker-compose down
```
