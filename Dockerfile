FROM airbyte/server:0.63.3
ENV TEMPORAL_ENABLED=false
EXPOSE 8000
CMD ["start"]
