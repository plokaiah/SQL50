# Write your MySQL query statement below
select ROUND(
                SUM(
                        CASE WHEN order_date = customer_pref_delivery_date THEN 1   ELSE 0 END
                    )* 100.0 / COUNT(DISTINCT customer_id)
            , 2) AS immediate_percentage
FROM Delivery
where(customer_id, order_date) in (
  Select customer_id, min(order_date) 
  from Delivery
  group by customer_id
)
