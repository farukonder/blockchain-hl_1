FROM java:openjdk-8-jdk

ENV spark_ver 2.1.0

RUN sudo apt-get install -y curl

RUN curl -H 'Accept: application/vnd.github.v3.raw' https://raw.githubusercontent.com/rddill-IBM/ZeroToBlockchain/master/setup_Ubuntu_Part_1.sh | bash

RUN curl -H 'Accept: application/vnd.github.v3.raw' https://raw.githubusercontent.com/rddill-IBM/ZeroToBlockchain/master/setup_Ubuntu_Part_2.sh | bash

ENV PATH $PATH:/opt/spark/bin