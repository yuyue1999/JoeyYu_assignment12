FROM python:3.10-slim

WORKDIR /src

COPY src/ /src

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "main.py"]
