#!/bin/bash

entrada="/home/EPNro1/entrada"
procesado="/home/EPNro1/procesado"
salida="/home/EPNro1/salida"
enMenu=0

while getopts "d" opt; do
    case $opt in
        d)
            pkill -f "/home/EPNro1/consolidar.sh"
            rm -r /home/EPNro1/
        ;;
        *)
            echo "El parametro no existe"
            exit 1
        ;;
    esac
done

echo "Comienza el primer ejercicio practico de Bash"
while [[ "$enMenu" -ne 1 ]]; do

if [[ -z "$FILENAME" ]]; then
    echo "Debe ingresar la variable FILENAME"
    exit 1
fi

echo "Ingrese una opcion del menu"
echo "1 - Crear entorno"
echo "2 - Correr proceso"
echo "3 - Ver alumnos ordenados por padron"
echo "4 - Ver 10 notas mas altas"
echo "5 - Ver datos de UN usuario"
echo "6 - Salir"
read option

case $option in
    1)
        echo "Creando entorno..."
        mkdir -p /home/EPNro1/{entrada,salida,procesado}
        touch "$salida/$FILENAME".txt
    ;;
    2)
        echo "Correr proceso..."
        touch /home/EPNro1/consolidar.sh
        cd /home/EPNro1
        echo '#!/bin/bash
	entrada="/home/EPNro1/entrada"
	procesado="/home/EPNro1/procesado"
	salida="/home/EPNro1/salida"
	while [ true ]; do
	cd "$entrada"
    	for i in $(ls *.txt); do
        cat "$i" >> "$salida"/$FILENAME.txt
        mv "$i" "$procesado"
    	done
    	sleep 5
	done' > consolidar.sh
        bash consolidar.sh
    ;;
    3)
        if [[ -f "$salida/$FILENAME".txt ]]; then
            echo "Listado de alumnos ordenados por padron"
            sort -k1 -n "$salida/$FILENAME".txt
        fi
    ;;
    4)
        if [[ -f "$salida/$FILENAME".txt ]]; then
            echo "Estas son las 10 notas mas altas"
            sort -k5 -nr "$salida/$FILENAME".txt
        fi
    ;;
    5)
        echo "Ingrese numero de padron"
        read padron
        result=$(grep "$padron" "$salida/$FILENAME".txt)
        echo "Resultado $result"
        if [ -z "$result" ]; then
            echo "No se encontro alumno con padron $padron"
        else
            echo "Datos del alumno:"
            echo "$result"
        fi
    ;;
    6)
        echo "Salir"
        enMenu=1
        pkill -f "/home/EPNro1/consolidar.sh"
        exit 0
    ;;
    *)
        echo "Elija una opcion correcta"
    ;;
esac
done
