
DEFINE SHA datafu.pig.hash.SHA('256');

studentinformation = FOREACH (LOAD 'vir_db.student_info' USING org.apache.hive.hcatalog.pig.HCatLoader()) GENERATE SHA(student_id) AS dimension8;

STORE studentinformation INTO '/vir_db/students/studentinformations/' USING PigStorage(',');
