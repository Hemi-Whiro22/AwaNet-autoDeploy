# ---- Base image ----
FROM python:3.11-slim AS base

# Set working dir
WORKDIR /app

# Install system deps (e.g. for psycopg2, Pillow, etc.)
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# ---- Install deps ----
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ---- Copy code ----
COPY . .

# ---- Run ----
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]
