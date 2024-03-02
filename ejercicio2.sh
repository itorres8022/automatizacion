#! /bin/bash

awk -F ',' '$45 =="AGUASCALIENTES SUR" {print $1, $14}' Accidentes_ags_2021.csv
