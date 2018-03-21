#!/bin/bash

[ -z  "$DBIP" ] && echo "Need DBIP address to start the container" && exit 1
[ -z "$DBUSER" ] && echo "Need DBUSER to start the container" && exit 1
[ -z "$DBPASS" ] && echo "Need DBPASS to start the container" && exit 1
java -jar /student.war --DBIP=${DBIP} --DBUSER=${DBUSER} --DBPASS=${DBPASS}
