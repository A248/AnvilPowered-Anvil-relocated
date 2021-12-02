#!/bin/bash

JAR=`readlink -f $1`
echo "Using jar $JAR and artifactId $2"
REPO=`readlink -f repo`

mvn install:install-file -Dfile=$JAR -DgroupId=org.anvilpowered -DartifactId=$2 -Dversion=0.1.0-SNAPSHOT -Dpackaging=jar -DlocalRepositoryPath=$REPO
