#! /bin/bash

suma=$(awk -F ',' '{sum+=$13} END {print sum}' Accidentes_ags_2021.csv)

echo "la suma total de Automoviles es: $suma"
