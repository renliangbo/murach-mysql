SELECT vendor_state, vendor_name, SUM(invoice_total) AS sum_of_invoices
FROM vendors v JOIN invoices i 
    ON v.vendor_id = i.vendor_id
GROUP BY vendor_state, vendor_name;

SELECT vendor_state, MAX(sum_of_invoices) AS sum_of_invoices
FROM
(
     SELECT vendor_state, vendor_name,
         SUM(invoice_total) AS sum_of_invoices
     FROM vendors v JOIN invoices i 
         ON v.vendor_id = i.vendor_id
     GROUP BY vendor_state, vendor_name
) t
GROUP BY vendor_state;