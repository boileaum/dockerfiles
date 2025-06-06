FROM debian

LABEL maintainer="Matthieu Boileau <matthieu.boileau@math.unistra.fr>"

RUN apt-get update && apt-get -yq dist-upgrade && \
    apt-get install -yq --no-install-recommends \
      wget \
      python \
      vim \
      python-setuptools \
      python-git \
      python-svn \
      graphviz \
      lmod \
      bzip2 \
      patch \
      gcc \
      g++ \
      unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash eb
ENV HOME /home/eb
RUN chown -R eb:eb /home/eb
USER eb
WORKDIR $HOME

ADD https://raw.github.com/hpcugent/easybuild-framework/develop/easybuild/scripts/bootstrap_eb.py .
USER root
RUN chown eb:eb bootstrap_eb.py
USER eb

#RUN /bin/bash -c "source /usr/share/lmod/6.6/init/bash" && \
#    PREFIX_X86_64=/home/eb/easybuild && \
#    python bootstrap_eb.py $PREFIX_X86_64

