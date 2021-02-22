from alpine:latest

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

RUN apk update && apk add --no-cache gcc g++ python3-dev unixodbc-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]


