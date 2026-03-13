CREATE TABLE IF NOT EXISTS {schema}.{env}_fab.po_event_audit (
  event_id                   BIGINT,
  event_type                 STRING,
  event_action_code          STRING,
  po_header_id               BIGINT,
  order_number               STRING,
  sold_to_legal_entity_id    BIGINT,
  sold_to_legal_entity_name  STRING,
  requisitioning_bu_id       BIGINT,
  interface_source_code      STRING,
  co_sequence                BIGINT,
  co_type_code               STRING,
  implementation_date        TIMESTAMP,
  created_by                 STRING,
  creation_date              TIMESTAMP,
  last_updated_by            STRING,
  last_update_date           TIMESTAMP,
  last_update_login          STRING,
  ingest_ts                  TIMESTAMP,
  ingest_date                DATE
)
USING DELTA
PARTITIONED BY (ingest_date);