FROM ubuntu:18.04
MAINTAINER Pierre Navaro <pierre.navaro@univ-rennes1.fr>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -yq dist-upgrade \
 && apt-get install -yq --no-install-recommends sudo apt-utils\
 && apt-get install -yq --no-install-recommends \
     ca-certificates build-essential git cmake g++ gfortran \
     liblapack-dev gmsh libsuitesparse-dev \
     libeigen3-dev libarpack++2-dev
