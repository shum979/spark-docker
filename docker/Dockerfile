FROM stakater/java8-alpine

COPY spark-2.4.4-bin-hadoop2.7 /opt/spark
RUN chgrp root /etc/passwd && chmod ug+rw /etc/passwd

COPY rootfs /
RUN /postunpack.sh

ENV APP_NAME="recon-spark" \
    JAVA_HOME="/opt/jdk" \
    PATH="/opt/python/bin:$JAVA_HOME/bin:/opt/spark/bin:/opt/spark/sbin:$PATH" \
    SPARK_HOME="/opt/spark"


WORKDIR /tmp
USER 1000210001
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/run.sh" ]