{{ config(materialized='table') }}
with people_country as (
    select country,
    count(1) total_people
    from {{ref('peoples')}} people
    left join {{ref('places')}} place
    on people.birth_place_id = place.place_id
    group by country
)
select * from people_country