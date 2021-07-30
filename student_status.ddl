SET hive.support.concurrency=FALSE;

USE vir_db;

DROP TABLE IF EXISTS vir_db.student_status
 PURGE
;

CREATE EXTERNAL TABLE IF NOT EXISTS vir_db.student_status
(
  student_id                            BIGINT
  ,batch_typeid                         INT
  ,student_name                         STRING
  ,nick_name                            STRING
  ,school_name                          STRING
  ,joining_date                         TIMESTAMP
  ,last_date                            TIMESTAMP
  ,hindi_marks                          INT
  ,maths_marks                          INT
  ,pyschics_marks                       INT
  ,social_marks                         INT
  ,english_marks                        INT
)

PARTITIONED BY (partition_source_table_name STRING,partition_mst_date STRING)
STORED AS ORC
LOCATION '/vir_db/students/student_status/'
;

SET hive.metastore.client.socket.timeout=10000;

MSCK REPAIR TABLE vir_db.student_status;