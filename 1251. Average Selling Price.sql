# Write your MySQL query statement below
select a.product_id, ifnull(round(sum(a.price*b.units)/sum(units),2) ,0)as average_price
from Prices a
left join UnitsSold b
on a.product_id=b.product_id
and b.purchase_date>=a.start_date
and b.purchase_date<=end_date
group by product_id;
