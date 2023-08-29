# brooklyndata_dbt
* Load Brooklyndata olist dataset(https://app.mode.com/brooklyndata/tables) to Snowflake
* Create data models using dbt
![Alt text](image.png)

## prerequistes
* Install Snowsql: https://docs.snowflake.com/en/user-guide/snowsql-install-config
* Follow steps to configure snowsql: https://docs.snowflake.com/en/user-guide/snowsql-config
* Have Python3 installe

## set up
* To create and load raw data to DB:
  * replace(<ACCOUNT_NAME>, <LOGIN_NAME>) and run :
  ```bash
  snowsql -a <ACCOUNT_NAME> -u <LOGIN_NAME> -f create_load_data.sql
  ```
  * input password
* install dbt
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

# 
