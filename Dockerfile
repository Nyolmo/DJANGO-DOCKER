FROM python:3.13.3-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y curl

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY src/requirements.txt .
RUN uv pip install -r requirements.txt --system

COPY src/django_docker/ ./

EXPOSE 8000

CMD ["/app/entrypoint.sh"]
