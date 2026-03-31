SELECT
  c.customer_state AS estado,
  CASE
    WHEN
      DATE(p.order_delivered_customer_date)
      > DATE(p.order_estimated_delivery_date)
      THEN 'Atrasado'
    ELSE 'No Prazo'
    END AS status_entrega,
  ROUND(AVG(r.review_score), 2) AS media_nota,
  COUNT(p.order_id) AS total_pedidos
FROM
  projeto-1-483023.projeto_olist.Pedidos AS p
JOIN
  projeto-1-483023.projeto_olist.reviews AS r
  ON p.order_id = r.order_id
JOIN
  projeto-1-483023.projeto_olist.cliente AS c
  ON c.customer_id = p.customer_id
WHERE
  p.order_delivered_customer_date IS NOT NULL
GROUP BY
  estado, status_entrega
ORDER BY
  estado,
  status_entrega;
