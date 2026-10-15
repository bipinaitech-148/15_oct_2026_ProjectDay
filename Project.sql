use storesales;
SELECT DISTINCT category
FROM vrinda_Prod;
`QUESTION 4..Finding unique shipping  cities in uttarpradesh`
SELECT DISTINCT ship_city
FROM vrinda_sale
WHERE ship_state = 'UTTAR PRADESH'
ORDER BY ship_city;

'QUESTION 3..Filter and display deliverd sales'
SELECT sale_id,
       order_id,
       order_date,
       order_status,
       sales_channel,
       sku,
       qty,
       amount,
       ship_city,
       ship_state
FROM Vrinda_Sale
WHERE order_status = 'Delivered';

'QUESTION 5..Find sale from select channel
display the 10 highest vale sales record  from sales channel 
whose name  start with "M" , where  the order amount is  between  500 and  2000 .
show  the order id ,sales channel,and amount using the alieas order number,channel name ,and sale amount'
SELECT order_id     AS order_number,
       sales_channel AS channel_name,
       amount        AS sale_amount
FROM Vrinda_sale
WHERE sales_channel LIKE 'M%'
  AND amount BETWEEN 500 AND 2000
ORDER BY amount DESC
LIMIT 10;

'QUESTION 1.. Find unique sales channel.
Display the  unique sale channel whose name start with "Ama".
 show  the channel name under alias channel name display a maximum of five result'
 
SELECT DISTINCT sales_channel AS channel_name
FROM Vrinda_Sale
WHERE sales_channel LIKE 'Ama%'
LIMIT 5;
' Question 2'
SELECT s.order_id,
       s.sku,
       p.category,
       p.size
FROM Vrinda_Sale s
INNER JOIN Vrinda_Prod p
        ON s.sku = p.sku;