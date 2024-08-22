-- Databricks notebook source
-- MAGIC %md Create the external locations required for this project
-- MAGIC
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC [CREATE EXTERNAL LOCATION
-- MAGIC ](https://learn.microsoft.com/en-us/azure/databricks/sql/language-manual/sql-ref-syntax-ddl-create-location)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC ##### Create external location

-- COMMAND ----------

-- Create a location accessed using the abfss_remote_cred credential
CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_bronze
URL 'abfss://bronze@stdatabrickscourseextdl.dfs.core.windows.net' 
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC ##### Drop external location

-- COMMAND ----------

DROP EXTERNAL LOCATION IF EXISTS databrickscourseextdl_bronze

-- COMMAND ----------

DESC EXTERNAL LOCATION databrickscourseucextdl_bronze

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(dbutils.fs.ls("abfss://bronze@stdatabrickscourseextdl.dfs.core.windows.net/"))

-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls "abfss://bronze@stdatabrickscourseextdl.dfs.core.windows.net/"

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC ##### Silver

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_silver
URL 'abfss://silver@stdatabrickscourseextdl.dfs.core.windows.net' 
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC ##### Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_gold
URL 'abfss://gold@stdatabrickscourseextdl.dfs.core.windows.net' 
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`)
