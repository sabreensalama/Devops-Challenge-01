# from base image python
FROM python:3.7-alpine
# create directory /app and make it as working dirrectory
WORKDIR /app 
# copy the app content to /app
COPY . /app
# install dependencies from requirements.txt
RUN pip install -r requirements.txt
# run app
CMD python  hello.py
