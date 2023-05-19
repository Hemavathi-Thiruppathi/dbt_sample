{{
    config(
        materialized='incremental',
        unique_key='orderid'
    )
}}

select * from 
{{ source('globalmart', 'orders') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where update_dt > (select max(update_dt) from {{ this }})

{% endif %}