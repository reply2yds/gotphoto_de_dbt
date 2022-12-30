# GotPhoto Data Engineering Challenge - Part 2
This repository contains **DBT** code to transform. Firstly, the data is extracted from the files placed in google drive to `analytics` schema of `mysql` database using **airbyte**.

## Prerequisites
1. Make sure the `mysql` database is up and running
2. Make sure the data is loaded into `analytics` schema of `mysql` database using airbyte
3. `analytics` user have appropriate access to data
4. Make sure `profile.yml` is appropriately setup

## Data transformation
Data is transformed and loaded into various table using 3 different models. Use the below command to run the transformation:
> `dbt run`

The transformed data can be tested by running below command:
> `dbt test`


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices