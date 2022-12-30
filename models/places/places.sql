{{ config(materialized='incremental', unique_key='place_id') }}
with places as (
    select md5(concat(city, county, country)) as place_id,
    city,
    county,
    country 
    from analytics.stg_places
)
select * from places