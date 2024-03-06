#!/bin/bash

cat_aritmetico() {
  echo -e "\n\n=======================================================================\n\n"
  # Operadores Aritmetico

  # Suma
  rta_suma=$(expr 10 + 5) #primera manera
  echo "La suma es $rta_suma"

  # Resta
  rta_resta=$((20 - 8)) # Segunda Manera
  echo "La Resta es $rta_resta"

  # Multiplicacion
  rta_multiplicacion=$(expr 6 \* 4) # Tercera manera
  echo "La Multiplicacion es $rta_multiplicacion"

  # División
  rta_division=$(expr 25 / 5)
  echo "La división es $rta_division"

  # Módulo (resto de la división)
  rta_modulo=$(expr 17 % 3)
  echo "El resto de la división es $rta_modulo"

  # Exponente
  rta_exponente=$((2**4))
  echo "2 elevado a la 4 es $rta_exponente"
}

# cat_aritmetico

cat_comparacion() {
  echo -e "\n\n=======================================================================\n\n"
  # Operadores Comparacion
  #
  rta="si es un 1 es verdadero si es falso obtendremos 0"
  echo $rta

  # Igualdad
  a=10
  b=10
  rta_igualdad=$((a == b))
  echo "Igualdad: $a = $b es: $rta_igualdad"

  # Desigualdad
  c=5
  rta_desigualdad=$((a != c))
  echo "Desigualdad: $a != $c es: $rta_desigualdad"

  # Mayor que
  d=15
  rta_mayor=$((d > a))
  echo "Mayor: $d > $a es: $rta_mayor"

  # Menor que
  e=8
  rta_menor=$((e < a))
  echo "Menor: $e < $a es: $rta_menor"

  # Mayor o igual que
  f=10
  rta_mayor_igual=$((f >= a))
  echo "Mayor o igual que: $f >= $a es: $rta_mayor_igual"

  # Menor o igual que
  g=10
  rta_menor_igual=$((g >= a))
  echo "Mayor o igual que: $g <= $a es: $rta_menor_igual"

  #   En Bash, == y -eq son operadores utilizados para comparaciones, pero se utilizan en contextos diferentes:
  #
  # == (dentro de corchetes dobles [[ ]]):
  #
  # Se utiliza para comparar cadenas de texto.
  # A menudo se prefiere para comparaciones de cadenas debido a su sintaxis más flexible.
  # No se puede utilizar para comparar números.
  # Ejemplo:
  #
  # bash
  # Copy code
  # cadena1="hola"
  # cadena2="hola"
  #
  # if [[ "$cadena1" == "$cadena2" ]]; then
  #     echo "Las cadenas son iguales"
  # else
  #     echo "Las cadenas son diferentes"
  # fi
  # -eq (dentro de corchetes simples [ ]):
  #
  # Se utiliza para comparar números.
  # No es adecuado para comparar cadenas de texto; su función principal es la comparación de enteros.
  # Ejemplo:
  #
  # bash
  # Copy code
  # numero1=5
  # numero2=5
  #
  # if [ "$numero1" -eq "$numero2" ]; then
  #     echo "Los números son iguales"
  # else
  #     echo "Los números son diferentes"
  # fi
  # En resumen, == se utiliza para comparar cadenas de texto dentro de corchetes dobles [[ ]], mientras que -eq se utiliza para comparar números dentro de corchetes simples [ ]. No debes intercambiarlos, ya que su uso incorrecto puede conducir a resultados inesperados o errores sintácticos.
}

# cat_comparacion

cat_logico() {
  echo -e "\n\n=======================================================================\n\n"
  # OPERADORES LOGICOS
  # Se usan basandonos en condiciones

  # El operando "AND" "&&" devuelve True (1) siempre que los dos operandos sean correctos
  echo "$(( 3 + 2 == 5 && 7 * 2 == 14 ))"
  # El operando "OR" "||" devuelve True (1) siempre que uno de los dos operandos sea correcto
  echo "$((3 + 2 == 5 || 7 * 2 == 10 ))"
  # El operando "NOT" "!" devuelve True (1) siempre que uno de los dos operandos sea falso
  echo "$(( 10 + 3 != 14 ))"

}
# cat_logico

cat_asignacion() {
  # Son los que se usan para dar valor a una variable por ejemplo

  my_variable=5         # Asignación
  echo $my_variable

  let my_variable+=1
  echo $my_variable      # Suma y Asignación

  let my_variable-=1
  echo $my_variable      # Resta y Asignación

  let my_variable*=2
  echo $my_variable      # Multiplicación y Asignación

  let my_variable/=2
  echo $my_variable      # División y Asignación

  let my_variable%=3
  echo $my_variable      # Mòdulo y aAsignación
}

cat_asignacion

cat_identidad() {
  my_new_variable=2
  # se utiliza mas con cadenas
  echo "my_variable is my_new_variable es $((my_variable == my_new_variable))"
  echo "my_variable is not my_new_variable es $((my_variable != my_new_variable))"

}
# cat_identidad

cat_bit() {
  # En Bash, puedes utilizar operadores de bits para realizar operaciones de manipulación de bits en números enteros. Aquí tienes algunos de los operadores de bits más comunes:

  # Operador AND (&):

  # Realiza una operación AND bit a bit entre dos números.
  resultado_and=$((5 & 3))
  echo "5 AND 3 es $resultado_and"

  # Operador OR (|):

  # Realiza una operación OR bit a bit entre dos números.
  resultado_or=$((5 | 3))
  echo "5 OR 3 es $resultado_or"

  # Operador XOR (^):

  # Realiza una operación XOR bit a bit entre dos números.
  resultado_xor=$((5 ^ 3))
  echo "5 XOR 3 es $resultado_xor"

  # Operador NOT (~):

  # Realiza una operación NOT bit a bit en un número.
  resultado_not=$((~5))
  echo "NOT 5 es $resultado_not"

  # Desplazamiento a la izquierda (<<):

  # Desplaza los bits de un número a la izquierda.
  resultado_izquierda=$((5 << 2))
  echo "Desplazamiento a la izquierda de 5 por 2 posiciones es $resultado_izquierda"

  # Desplazamiento a la derecha (>>):

  # Desplaza los bits de un número a la derecha.
  resultado_derecha=$((16 >> 2))
  echo "Desplazamiento a la derecha de 16 por 2 posiciones es $resultado_derecha"

  # Estos operadores de bits son útiles en situaciones donde necesitas realizar manipulaciones de bits en números enteros. Ten en cuenta que en Bash, las operaciones de bits se realizan en enteros con signo de 32 bits, y los resultados pueden ser diferentes de lo que esperarías en otros lenguajes de programación.
}

cat_extructura_control() {
  # Condicionale

  my_string="DarosMD"

  if [ $my_string -eq "DarosMD" ]; then # solo acepta expresiones enteras
    echo "my_string es 'DarosMD'"
  fi


  my_num=4

  if [ "$my_num" -eq 1 ];then
    echo "son iguales"
  elif [ $my_num -gt 1 ];then
    echo "$my_num Es mayor que 1"
  else
    echo "no son iguales"
  fi

  echo -e "\n\tla equivalencia de condicionales es:\n
  -gt     >       mayor\n
  -lt     <       menor\n
  -ge     >=      mayor o igual\n
  -le     <=      menor o igual\n
  -eq     ==      igual\n
  -ne     !=      distinto\n"

}
cat_extructura_control
