#!/bin/bash
arq=0
cont=0
opc=""


while read linha;
do
	for i in ${linha};
	do
		arq=$(($arq + 1 ))
	done
	for j in ${linha};
	do
		cont=$(($cont + 1))
		if [ $cont -eq 1 ];
		then
			opc=$j

		else
			if [ $cont -lt $arq ];
			then

				opc="$opc ${j:0:1}."

		       	else
				if [ $cont -eq $arq ];
		
				then

				opc="$opc $j"

				fi

			fi
		fi

	done
	
	echo $opc

done < text3.txt
