-- models/core/wallet_activity.sql

WITH source AS (
  SELECT * FROM {{ ref('stg_transactions') }}
)

SELECT
  from_address AS wallet,
  COUNT(*) AS tx_count,
  SUM(eth_value) AS total_eth_sent,
  MAX(block_timestamp) AS last_activity
FROM source
GROUP BY wallet