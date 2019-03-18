

%TASK 1 - PEDRO SALAZAR PAREDES - 201520639




%1.1 El resultado de esta expresión es la suma de ambos números. Se aplica el procedimiento “+” de Number y está definido con los parámetros correctos.
{Browse 3 + 5}

%1.2 Esta expresión resulta en un error de tipo pues el procedimiento “+” la intenta sumar 8 a 12.1, y 12.1 es un float y 8 no. Lo que pasa acá es que el procedimiento “+” que se llama cuando se lee primero un float no es el mismo procedimiento “+” que se llama cuando se lee primero un entero, y este espera un float como argumento.
{Browse 12.1 + 8}

%1.3En este caso la excepción es el resultado de que no hay un procedimiento “+” que reciba átomos, y tanto ”foo” como “bar” lo son.
{Browse foo + bar}

%1.4 En este caso pasa lo mismo que en 1.3, pues los átomos pueden ser definidos con o sin las comillas, y el problema es exactamente el mismo.
{Browse 'hello' + 'world'}

%1.5 El resultado de esta expresión en true, pues el procedimiento orelse se evalúa al primer argumento si es verdadero y en este caso lo es.
{Browse true orelse false}

%1.6 El resultado de esta expresión también es true pues el procedimiento orelse se evalúa al segundo argumento si y solo si cuando el primero es falso y en este caso lo es.
{Browse false orelse true}

%1.7 El resultado de esta expresión es 2 pues el primer argumento del orelse es falso y orelse se evalúa a lo que sea que tenga como segundo argumento sin importar lo que sea (no es una comparación entre los argumentos).
{Browse false orelse 2}

%1.8 El resultado de esta expresión es 1 pues este procedimiento es el mismo que andthen y ese se evalúa al segundo argumento cuando el primero es verdadeo.
{Browse {And true 1}}

%1.9 El resultado de esta expresión es la multiplicación de ambos números por la misma razón que el 1.1 funciona, ambos son enteros (&c es el entero correspondiente a 'c' en la tabla ASCII)
{Browse &c * 7}