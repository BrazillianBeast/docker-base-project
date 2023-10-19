FROM python:3.10

COPY main.py /app/

WORKDIR /app

RUN pip install fastapi==0.104.0
RUN pip install "uvicorn[standard]"

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
