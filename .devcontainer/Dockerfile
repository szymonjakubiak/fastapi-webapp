ARG PYTHON_VERSION=3.9

FROM mcr.microsoft.com/vscode/devcontainers/python:${PYTHON_VERSION}

RUN apt-get update \
    && apt-get -y install git curl unzip software-properties-common

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

ARG USERNAME=vscode
USER ${USERNAME}
RUN curl -sSL https://install.python-poetry.org | python -
