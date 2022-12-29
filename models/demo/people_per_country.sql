{{ config(materialized='table') }}
with peoples as (
    select * from staging.stg_peoples
),
places as (
    select * from staging.stg_places
),
people_country as (
    select country,
    count(1) total_people
    from peoples
    left join places
    on lower(place_of_birth) = lower(city)
    group by country
)
select * from people_country