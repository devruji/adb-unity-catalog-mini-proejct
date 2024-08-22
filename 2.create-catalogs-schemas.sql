-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC ### Create catalogs and Schemas required for the project
-- MAGIC
-- MAGIC 1. Catalog - Formula1dev (Without managed location)
-- MAGIC 2. Schemas - bronze, silver, and gold. (with managed location)

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS formula1_dev;

-- COMMAND ----------

SELECT current_catalog()

-- COMMAND ----------

USE CATALOG formula1_dev;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION "abfss://bronze@stdatabrickscourseextdl.dfs.core.windows.net/";

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION "abfss://silver@stdatabrickscourseextdl.dfs.core.windows.net/";

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION "abfss://gold@stdatabrickscourseextdl.dfs.core.windows.net/";

-- COMMAND ----------

DESC SCHEMA EXTENDED formula1_dev.bronze

-- COMMAND ----------

DESC SCHEMA EXTENDED formula1_dev.silver

-- COMMAND ----------

DESC SCHEMA EXTENDED formula1_dev.gold

-- COMMAND ----------

SHOW SCHEMAS;
