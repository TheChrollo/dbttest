SELECT
  from_address,
  COUNT(*) AS transaction_count,
  SUM(value) AS total_value
FROM
  `bigquery-public-data.crypto_ethereum.transactions`
GROUP BY
  from_address
ORDER BY
  total_value DESC
LIMIT 100
