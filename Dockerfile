FROM  python:3.4-alpine
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["python", "app.py", "run", "0.0.0.0:5000"]
