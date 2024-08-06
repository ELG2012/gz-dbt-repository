with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        concat(date_date, "_", pdt_id) AS sales_id,
        revenue,
        quantity

    from source

)

select * from renamed
