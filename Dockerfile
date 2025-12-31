# Official uv image with Python 3.11 (slim Debian base)
FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim

# Recommended for logs
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1


WORKDIR /app

COPY  requirements.txt .

RUN uv pip install --system --no-cache -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "application.py"]