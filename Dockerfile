FROM python:3.9

COPY ./requirements.txt /opt/waznexserver/WaznexServer/requirements.txt

WORKDIR /opt/waznexserver/WaznexServer

RUN pip install -r requirements.txt

COPY . /opt/waznexserver/WaznexServer/

# RUN mkdir waznexserver/data
# RUN python waznexserver/utils.py

# VOLUME [ "GRIDSPLITTER_PYTHON = "/opt/waznexserver/env/bin/python"" ]

CMD python waznexserver/waznexserver.py