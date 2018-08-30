FROM  python:3.4-alpine
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["app.py"]
CMD ["python", "app.py", "run"]
