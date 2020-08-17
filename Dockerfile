FROM r-base:3.6.3
ARG HOME=/home
WORKDIR ${HOME}
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y \
    && apt-get -y build-dep libssl-dev libxml2-dev \
    && apt-get -y install  bc build-essential libcurl4-openssl-dev libxml2-dev libssl-dev
COPY  script /home/script
RUN Rscript script/installRPackage.R && chmod u+x script/installPy.sh && sh script/installPy.sh && rm -rf ${HOME}/* && rm -rf /var/lib/apt/lists/*


