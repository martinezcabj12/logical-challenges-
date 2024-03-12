#!/bin/bash

cat_documentacion(){
  pagina_oficcial="https://www.gnu.org/"
  documentacion="https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html"
}


# Comentario en una linea

: '
  Este es un comentario de
  varias líneas en Bash
'


# Variables con Reasignacion
saludo1="Hola Mundo"  # Variables
saludo1="Hola $USER"  # Variable Reasignado con una variable de entorno del sistema
echo $saludo1


# Variables con tipo de datos

var_string="String"                 # String
var_entero=1                        # Int
var_float=3,14                      # Float
var_array=("rojo" "verde" "azul")   # Array
var_boolean=true                    # Boolean

# Saludo al lenguaje que quiero aprender
Lenguaje="Bash"


echo $var_string
echo $var_entero
echo $var_float
echo $var_array
echo $var_boolean
echo "HOLA $Lenguaje"


