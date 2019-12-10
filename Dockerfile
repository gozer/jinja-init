FROM python:3.7

MAINTAINER Philippe M. Chiasson <gozer@ectoplasm.org>

COPY requirements.txt .
RUN pip install -r requirements.txt
ADD run.py /run.py

USER 1001
ENTRYPOINT ["python", "/run.py"]
