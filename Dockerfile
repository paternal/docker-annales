FROM paternal/cours
LABEL maintainer "Louis Paternault <spalax+docker@gresille.org>"

# Install softwares
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get -y update \
  && apt-get install --yes \
    # Python
    tox python3-yaml \
  && apt-get clean

# Scrapy cannot be installed by debian yet
RUN \
  apt-get -y update \
  && apt-get install --yes \
    libssl-dev \
  && apt-get clean
RUN pip3 install scrapy

## TODO REMOVE

# annales
RUN git clone https://framagit.org/lpaternault/annales-math /usr/share/annales
