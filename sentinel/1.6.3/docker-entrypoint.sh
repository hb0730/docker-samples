#!/bin/bash
# startup server
RUN_CMD="java"
RUN_CMD="$RUN_CMD $JAVA_OPTS"
RUN_CMD="$RUN_CMD -Dserver.port=$SERVER_PORT"
RUN_CMD="$RUN_CMD -Dcsp.sentinel.dashboard.server=$DASHBOARD_SERVER"
RUN_CMD="$RUN_CMD -Dproject.name=$PROJECT_NAME"
RUN_CMD="$RUN_CMD -Dsentinel.dashboard.auth.username=$USER_NAME"
RUN_CMD="$RUN_CMD -Dsentinel.dashboard.auth.password=$PASS_WORD"
RUN_CMD="$RUN_CMD -Dserver.servlet.session.timeout=$TIME_OUT"
RUN_CMD="$RUN_CMD -jar"
RUN_CMD="$RUN_CMD -Djava.security.egd=file:/dev/./urandom"
RUN_CMD="$RUN_CMD -Duser.timezone=GMT+08"
RUN_CMD="$RUN_CMD /home/sentinel/app/app.jar"

echo $RUN_CMD
eval $RUN_CMD