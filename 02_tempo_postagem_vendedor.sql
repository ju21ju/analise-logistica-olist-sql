SELECT
  c.customer_state AS estado,
  ROUND(
    AVG(
      DATE_DIFF(
        DATE(p.order_delivered_carrier_date), DATE(p.order_approved_at), DAY)),
    2) AS media_postagem_vendedor
FROM projeto-1-483023.projeto_olist.reviews AS p
JOIN
  projeto-1-483023.projeto_olist.cliente AS c
  ON p.customer_id = c.customer_id
WHERE
  p.order_status = 'delivered'
  AND p.order_delivered_carrier_date IS NOT NULL
GROUP BY
  estado
ORDER BY
  media_postagem_vendedor DESC