FROM  python:3.4-alpine
RUN apt-get install -y python-pip python-dev build-essential
ENTRYPOINT ["python"]
CMD ["app.py", "run", "0.0.0.0:5000"]
