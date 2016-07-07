#Spark base Container

FROM ubuntu:16.04
MAINTAINER C.J. Woodley
RUN apt-get update
RUN apt-get install wget default-jre default-jdk -y
RUN mkdir /opt/spark
RUN wget http://apache.cs.utah.edu/spark/spark-1.6.2/spark-1.6.2-bin-hadoop2.6.tgz -P /opt/spark
RUN tar -zxf /opt/spark/*.tgz -C /opt/spark
RUN mkdir /opt/spark/current
#ENTRYPOINT ["/opt/spark/spark-1.6.2-bin-hadoop2.6/bin/spark-shell",  "local[*]"]
