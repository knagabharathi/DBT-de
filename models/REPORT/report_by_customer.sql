select
    CUSTOMERID,
    SEGMENT,
    COUNTRY,
    sum(ORDER_PROFIT) as profit
FROM
    {{ ref('STG_ORDERS') }}
GROUP by 
    CUSTOMERID,
    SEGMENT,
    COUNTRY