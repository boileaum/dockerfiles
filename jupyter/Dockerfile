FROM jupyter/minimal-notebook

# From Jupyter Project <jupyter@googlegroups.com>

LABEL maintainer="Matthieu Boileau <matthieu.boileau@math.unistra.fr>"

USER root

RUN apt-get update && apt-get -yq dist-upgrade \
 && apt-get install -yq --no-install-recommends \
    curl \
    rsync \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-lang-french \
    zip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# PATH to pip executable
ENV PATH=~/.local/bin:$PATH
ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN python3 -m bash_kernel.install

# Fix permission issue
RUN chmod g+w -R /opt/conda/etc/jupyter/nbconfig

# Switch back to NB_USER to avoid accidental container runs as root
USER $NB_USER
WORKDIR $HOME/work
