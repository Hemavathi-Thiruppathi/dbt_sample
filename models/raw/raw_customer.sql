tags: ['my_tag']

select * from 
{{ source('globalmart', 'customer') }}