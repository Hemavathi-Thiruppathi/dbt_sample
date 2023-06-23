{{
    config(
        tags = ["weekly"]
    )
}}

with product as (
    select * from 
    {{ source('globalmart_src', 'product') }}
)

select * from product
