#eejercicio 1
cut -f 1 data/Gesquiere2011_data.csv | grep -c -w 27
#literal 2
cut -f 1 $1 | grep -c -w $2 
#literal 3 
miID=`tail -n +2 data/Gesquiere2011_data.csv|sort -n  | uniq`
for id in $miID 
do 
valor=`bash literal3.sh data/Gesquiere2011_data.csv $id`  
echo "ID" $id "valor" $valor 
done
