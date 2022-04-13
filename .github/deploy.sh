#!/usr/bin/env bash
set -e
TIME=$(TZ="Europe/Oslo" date +%Y.%m.%d)
COMMIT=$(git rev-parse --short=12 HEAD)
revision="$TIME-$COMMIT"
echo "Using revision ${revision}"

mvn -B --settings maven-settings.xml -Drevision="${revision}" -DskipTests source:jar deploy
