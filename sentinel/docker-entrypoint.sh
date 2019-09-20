#!/bin/bash
# startup server
RUN_CMD="java"
RUN_CMD="$RUN_CMD $JAVA_OPTS"
RUN_CMD="$RUN_CMD -Dproject.name=$PROJECT_NAME"

RUN_CMD="${RUN_CMD -jar}"
RUN_CMD="$RUN_CMD -Djava.security.egd=file:/dev/./urandom"
RUN_CMD="$RUN_CMD -Duser.timezone=GMT+08"
RUN_CMD="$RUN_CMD /home/sentinel/app/app.jar"

echo $RUN_CMD
eval $RUN_CMD