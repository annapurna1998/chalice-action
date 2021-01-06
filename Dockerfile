
FROM python:3.7

LABEL version="1.0.0"
LABEL repository="https://github.com/annapurna1998/chalice-action"
LABEL homepage="https://github.com/annapurna1998/chalice-action"

COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN chalice deploy
# ENTRYPOINT ["entrypoint.sh"]
