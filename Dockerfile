FROM r-base:3.6.3
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y \
    && apt-get -y build-dep libssl-dev libxml2-dev \
    && apt-get -y install  bc build-essential libcurl4-openssl-dev libxml2-dev libssl-dev
WORKDIR /home
COPY  install.R /home
RUN Rscript /home/install.R

