sed 's/^ *//;s/ *$//;s/ +/ /' file1 > /vir_db/students/student_info
sed 's/^ *//;s/ *$//;s/ +/ /' file2 > /vir_db/students/student_status

awk '/^CREATE/{key=$NF} {print > key "." FILENAME}' new*

for file in *.newfile1
do
  Key=`echo ${file%.*}`
  echo "********  compare the key $Key **********"
  diff $file $Key.newfile2
done
