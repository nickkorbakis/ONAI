FROM airbyte/airbyte-webapp:latest as webapp
FROM airbyte/airbyte-server:latest as server
FROM airbyte/airbyte-db:latest as db

FROM airbyte/airbyte-proxy:latest

COPY --from=webapp /app /app/webapp
COPY --from=server /app /app/server
COPY --from=db /app /app/db

ENV INTERNAL_API_HOST=localhost
ENV WEBAPP_URL=http://localhost:8000
ENV API_URL=/api/v1
ENV AIRBYTE_VERSION=0.50.10
ENV DATABASE_USER=docker
ENV DATABASE_PASSWORD=docker
ENV DATABASE_HOST=localhost
ENV DATABASE_PORT=5432
ENV DATABASE_DB=airbyte
ENV DATABASE_URL=jdbc:postgresql://localhost:5432/airbyte

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]
