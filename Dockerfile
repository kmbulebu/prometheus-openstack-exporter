FROM python:2-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE        9103

CMD [ "python", "./exporter/main.py" ]
