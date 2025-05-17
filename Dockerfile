FROM docuseal/docuseal
RUN mkdir -p /data/storage/documents /data/storage/signatures /data/storage/audit-logs
ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER

ENV DATABASE_URL=postgresql://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE
