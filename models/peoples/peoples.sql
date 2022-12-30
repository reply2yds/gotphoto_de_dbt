{{ config(materialized='incremental', unique_key='people_id') }}
with peoples as (
    select md5(concat(given_name, family_name, date_of_birth, place_of_birth)) as people_id,
    given_name,
    family_name,
    date_of_birth,
    p.place_id birth_place_id
    from analytics.stg_peoples sp
    left join {{ref('places')}} p
    on lower(p.city) = lower(sp.place_of_birth)
)
select * from peoples