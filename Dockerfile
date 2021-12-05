ARG BASE_IMAGE
FROM ${BASE_IMAGE}

USER root
RUN apt-get update && \
    apt-get install -y g++-aarch64-linux-gnu make && \
    apt-get autoremove -y && \
    rm -fr /var/lib/apt/lists/*
USER user
