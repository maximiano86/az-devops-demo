FROM python:3.8-slim-buster

WORKDIR /app

COPY src/ ./

RUN pip3 install -r requirements.txt

EXPOSE 5000 8080

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
