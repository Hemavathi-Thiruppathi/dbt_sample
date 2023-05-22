{{
    config(
        tags = ["weekly"]
    )
}}

with customer as (
    select * from 
    {{ source('globalmart', 'customer')}}
)

select * from customer
