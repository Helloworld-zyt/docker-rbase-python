FROM r-base:4.0.2
WORKDIR /home
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y \
    && apt-get install -y curl libhdf5-dev libgsl-dev libboost-dev libcurl4-openssl-dev libssl-dev libxml2-dev build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
COPY  script /home/script
RUN Rscript script/installRPackage.R && chmod u+x script/installPy.sh && sh script/installPy.sh && rm -rf ./ && rm -rf /var/lib/apt/lists/*


