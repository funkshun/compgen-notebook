# Get Scipy Notebook that has most useful libraries installed
FROM jupyter/scipy-notebook:latest

# Add requirements 
ADD ./requirements.txt /tmp/requirements.txt

# Switch to root to install
USER root

# Install apt requirements
RUN apt-get update && \
apt-get -y install zlib1g-dev libbz2-dev liblzma-dev \
                   libssl-dev libcurl4 libcurl4-openssl-dev

# Update pip and install requirements
RUN pip install --no-cache pip --upgrade
RUN pip install --no-cache -r /tmp/requirements.txt


