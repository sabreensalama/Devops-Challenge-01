# from base image python
FROM python:3.7-alpine
# create directory /app and make it as working dirrectory
WORKDIR /app 
# copy requirements content to /app
COPY  requirements.txt /app

# install dependencies from requirements.txt
RUN pip install -r requirements.txt

# copy the app content to /app
COPY . /app

# run app
CMD python  hello.py
