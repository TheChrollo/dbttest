-- models/staging/stg_transactions.sql

SELECT
  block_number,
  from_address,
  to_address,
  value / 1e18 AS eth_value,  -- convert wei to ETH
  gas,
  gas_price,
  block_timestamp
FROM
  `bigquery-public-data.crypto_ethereum.transactions`
WHERE
  from_address IS NOT NULL
  AND value > 0