FROM airbyte/airbyte-server:latest

ENV INTERNAL_API_HOST=localhost
ENV WEBAPP_URL=http://localhost:8000
ENV API_URL=/api/v1
ENV AIRBYTE_VERSION=0.50.10
ENV DATABASE_HOST=your-postgres-internal-hostname
ENV DATABASE_PORT=5432
ENV DATABASE_USER=postgres
ENV DATABASE_PASSWORD=your-postgres-password
ENV DATABASE_DB=airbyte

EXPOSE 8000

CMD ["start"]
