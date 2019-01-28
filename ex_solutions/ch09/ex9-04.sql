SELECT invoice_number,
       invoice_date,
       DATE_ADD(invoice_date, INTERVAL 30 DAY) AS date_plus_30_days,
       payment_date,
       DATEDIFF(payment_date, invoice_date) AS days_to_pay,
       MONTH(invoice_date) AS "month",
       YEAR(invoice_date) AS "year"
FROM invoices
WHERE invoice_date > '2014-04-30' AND invoice_date < '2014-06-01'