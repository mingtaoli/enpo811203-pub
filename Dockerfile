FROM jupyter/datascience-notebook:ubuntu-20.04
LABEL maintainer="XJTU Ai4energy Team <mingtao@xjtu.edu.cn>"

USER ${NB_USER}
COPY --chown=${NB_USER}:users ./plutoserver ./plutoserver
COPY --chown=${NB_USER}:users ./environment.yml ./environment.yml
COPY --chown=${NB_USER}:users ./setup.py ./setup.py
COPY --chown=${NB_USER}:users ./runpluto.sh ./runpluto.sh

COPY --chown=${NB_USER}:users ./notebooks ./notebooks
COPY --chown=${NB_USER}:users ./Project.toml ./Project.toml
COPY --chown=${NB_USER}:users ./Manifest.toml ./Manifest.toml

ENV JULIA_PROJECT=/home/jovyan

RUN julia -e "import Pkg; Pkg.Registry.update(); Pkg.instantiate(); Pkg.status(); Pkg.precompile()"

RUN jupyter labextension install @jupyterlab/server-proxy && \
    jupyter lab build && \
    jupyter lab clean && \
    pip install . --no-cache-dir && \
    rm -rf ~/.cache