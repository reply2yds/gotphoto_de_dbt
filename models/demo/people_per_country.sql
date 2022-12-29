{{ config(materialized='table') }}
with stg_peoples as (
    select * from staging.stg_peoples
),
stg_places as (
    select * from staging.stg_places
),
people_country as (
    select country,
    count(1) total_people
    from stg_peoples
    left join stg_places
    on lower(place_of_birth) = lower(city)
    group by country
)
select * from people_country