FROM python:3.7

ARG MAINTAINER="Philippe M. Chiasson <gozer@ectoplasm.org>"
ARG BRANCH="master"
ARG COMMIT="local-build"
ARG TAG=""
ARG REPO="local"

LABEL branch=${BRANCH}
LABEL commit=${COMMIT}
LABEL tag=$TAG
LABEL repo=https://github.com/${REPO}
LABEL maintainer=${MAINTAINER}

MAINTAINER ${MAINTAINER}

COPY requirements.txt .
RUN pip install -r requirements.txt
ADD run.py /run.py

USER 1001
ENTRYPOINT ["python", "/run.py"]
