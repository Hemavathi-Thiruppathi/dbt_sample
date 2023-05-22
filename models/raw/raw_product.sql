{{
    config(
        tags = ["weekly"]
    )
}}

with product as (
    select * from 
    {{ source('globalmart', 'product') }}
)

select * from product
