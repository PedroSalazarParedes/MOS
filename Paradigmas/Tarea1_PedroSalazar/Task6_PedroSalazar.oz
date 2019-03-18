

%TASK 6 - PEDRO SALAZAR PAREDES - 201520639




%Yo sé que esto no es lo que dijo pero me pareció divertido intentar hacer la clase :@ Al final está la función que solo retorna la lista ordenada.
%Voy a tratar de hacer una "clase" como en un ejemplo del libro (para practicar, no sé si se vale)

declare
fun {NewPQ L} %Recibe una lista como parámetro
   PQ Length Insert Poll Peek in
   PQ = {NewCell L}
   fun {Length}
      local L in
	 {List.length @PQ L}
	 L
	 end
   end
   fun {Insert X}
      local T in
	 {List.append @PQ  [X]  T}
	 PQ := T
      end
      local T in
	 {List.sort @PQ  Value.'<'  T}
	 PQ := T
      end
      @PQ
   end
   fun {Peek}
      local T in
	 {List.nth @PQ  1  T}
	 T
      end 
   end
   fun {Poll}
      local T in
	 {List.drop @PQ  1  T}
	 T
      end 
   end
   pq(length:Length insert:Insert peek:Peek poll:Poll)
end
%------------------PRUEBAAAAAAS-------------
declare
X = {NewPQ nil}

{Browse {X.length}}
{Browse {X.insert 6}}
{Browse {X.insert 3}}
{Browse {X.peek}}
{Browse {X.insert 2}}
{Browse {X.peek}}
{Browse {X.poll}}
{Browse {X.peek}}
%{Browse {X.length}}

%Función que recibe lista y la ordena (esto es solo un wrapper unidireccional para List.sort, no?

local T
   
fun {MakePQ L} 
   {List.sort L  Value.'<'  T}
   T
end
in
   %TESTTT
{Browse {MakePQ [3 4 1 4 6 3 2 6 2]}}
end

