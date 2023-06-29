{% snapshot raw_customer_snapshot %}
    {{
        config(
          target_database='Analytics',
          target_schema='snapshots',
          unique_key='customerid',

          strategy='timestamp',
          updated_at='update_dt',
        )
    }}

    -- Pro-Tip: Use sources in snapshots!
    select * from {{ ref('raw_customer') }}

{% endsnapshot %}