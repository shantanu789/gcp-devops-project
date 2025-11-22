FROM python:alpine3.18

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

##EXPOSE 8080

##HEALTHCHECK --interval=30s --timeout=5s --start-period=5s CMD curl --fail http://localhost:8080/ || exit 1
