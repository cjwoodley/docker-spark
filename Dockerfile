#Spark base Container

FROM ubuntu:16.04
MAINTAINER C.J. Woodley
RUN apt-get update && \
    apt-get -y install wget default-jre default-jdk python python-dev build-essential python-pip
RUN mkdir /opt/spark
RUN wget http://www.gtlib.gatech.edu/pub/apache/spark/spark-2.0.0/spark-2.0.0-bin-hadoop2.7.tgz -P /opt/spark && \
    tar -zxf /opt/spark/*.tgz -C /opt/spark
RUN mkdir /opt/spark/current
RUN sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list' && \
    gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 && \
    gpg -a --export E084DAB9 |  apt-key add - && \
    apt-get update && \
    apt-get -y install r-base r-base-dev
RUN pip install jupyter
#ENTRYPOINT ["/opt/spark/spark-2.0.0-bin-hadoop2.6/bin/spark-shell",  "local[*]"]
