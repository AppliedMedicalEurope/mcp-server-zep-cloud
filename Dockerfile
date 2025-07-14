FROM python:3.11

WORKDIR /app

COPY . .  # ✅ includes core/ and everything inside it

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/core

CMD ["python", "run_server.py"]
