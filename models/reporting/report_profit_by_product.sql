with profit_by_product as (
    select
    productid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as profit
    from {{ ref('stg_orders') }}
    group by
    productid,
    productname,
    category,
    subcategory
)

select * from profit_by_product