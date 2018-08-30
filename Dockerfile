FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN nohup flask run --host=’0.0.0.0’ & > log.txt
CMD ["python", "app.py"]
