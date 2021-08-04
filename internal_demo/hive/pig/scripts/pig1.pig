A= LOAD 'internaldemodb.employee1' USING org.apache.hive.hcatalog.pig.HCatLoader();

STORE A INTO 'internaldemodb.employee3' USING org.apache.hive.hcatalog.pig.HCatStorer();