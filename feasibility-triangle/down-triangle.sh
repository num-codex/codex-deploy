#!/usr/bin/env sh

COMPOSE_PROJECT=${FEASIBILITY_COMPOSE_PROJECT:-feasibility-deploy}
BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 || exit 1 ; pwd -P )"

docker-compose -p "$COMPOSE_PROJECT" -f "$BASE_DIR"/aktin-client/docker-compose.yml down
docker-compose -p "$COMPOSE_PROJECT" -f "$BASE_DIR"/flare/docker-compose.yml down
docker-compose -p "$COMPOSE_PROJECT" -f "$BASE_DIR"/fhir-server/docker-compose.yml down -v
docker-compose -p "$COMPOSE_PROJECT" -f "$BASE_DIR"/rev-proxy/docker-compose.yml down
sh "$BASE_DIR"/dsf-client/down.sh "$COMPOSE_PROJECT"
