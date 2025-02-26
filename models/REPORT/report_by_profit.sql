{{
    config(
        materialized='table'
    )
}}

select
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY,
    SUM(ORDER_PROFIT) as profit
FROM
    {{ ref('STG_ORDERS') }}
GROUP BY
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
    