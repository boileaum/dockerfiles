FROM boileaum/jupyter:latest

USER root

RUN apt-get update && apt-get -yq dist-upgrade \
 && apt-get install -yq --no-install-recommends \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-fonts-extra-links \
    texlive-xetex \
    texlive-lang-french \
    latexmk \
    imagemagick \
    librsvg2-bin \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir jupyter-book

USER $NB_USER
CMD /bin/bash