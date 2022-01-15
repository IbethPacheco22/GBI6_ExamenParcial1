#literal 1 
fila=`wc -l < n1.txt`
columna=`awk " {print NF}" n1.txt |head -n 1`
echo "el numero de filas y el numero de columnas de n1.txt : $fila ,$columna "
#literal 2 
for archivo in *.txt;
do 
numero_fila=`cat $archivo | wc -l`
numero_colum=`head -n 1 $archivo |tr -d " "|tr -d "\n"|wc -c`
echo "el numero de filas y colum $archivo son $numero_fila, $numero_colum"
done 
