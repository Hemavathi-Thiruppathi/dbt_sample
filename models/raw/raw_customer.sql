{{
    config(
        tags = ["weekly"]
    )
}}

with customer as (
    select * from 
    {{ source('globalmart_src', 'customer')}}
)

select * from customer
