from pyspark.sql import SparkSession
from optparse import OptionParser
from pyspark.sql import functions as F
from pyspark.sql.types import IntegerType, StringType, BooleanType

#import data into dataframes 
studentinfor = spark.sql("""select student_id                            BIGINT
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
                                    ,english_marks                        INT from vir_db.student_info""")


studentinfor.write.mode("append").insertInto("vir_db.student_status",overwrite = True)
