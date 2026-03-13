CREATE TABLE IF NOT EXISTS {schema}.{env}_fab.ap_income_tax_regions (
  region_short_name STRING,
  region_long_name STRING,
  region_code LONG,
  reporting_limit DOUBLE,
  num_of_payees LONG,
  control_total1 DOUBLE,
  control_total2 DOUBLE,
  control_total3 DOUBLE,
  control_total4 DOUBLE,
  last_update_date     TIMESTAMP,
  ingest_ts            TIMESTAMP,
  ingest_date          DATE
)
USING DELTA
PARTITIONED BY (ingest_date);