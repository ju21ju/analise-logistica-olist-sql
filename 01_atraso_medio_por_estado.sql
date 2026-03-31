SELECT
  c.customer_state AS estado,
  ROUND(
    AVG(
      DATE_DIFF(
        DATE(p.order_delivered_customer_date),
        DATE(p.order_estimated_delivery_date),
        DAY)),
    2) AS media_dias_atraso,
  COUNT(p.order_id) AS total_pedidos
FROM `projeto-1-483023.projeto_olist.Pedidos` AS p
JOIN
  `projeto-1-483023.projeto_olist.cliente` AS c
  ON p.customer_id = c.customer_id
WHERE
  p.order_status = 'delivered'
  AND p.order_delivered_customer_date IS NOT NULL
GROUP BY
  estado
ORDER BY
  media_dias_atraso DESC;