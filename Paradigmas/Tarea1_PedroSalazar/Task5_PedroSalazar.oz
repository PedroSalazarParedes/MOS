

%TASK 5 - PEDRO SALAZAR PAREDES - 201520639


% Lo primero es definir polinomio. Consideraremos un polinomio de grado n como un record de la siguiente forma: nombre( 0:constante0 1:constante1 ... k:constantek ... n:constanten) donde k representa el grado del término.


% adición Suma los polinomios P y Q y deja el resultado en R
local P Q Suma R in
   proc{Suma P Q R}
      {Record.zip
       P Q
      fun {$ X Y} X+Y end R} % Lambdassssss
   end
   P = p(0:5 1:3 2:2)
   Q = q(0:6 1:8 2:5)
   {Suma P Q R}
   {Browse R}
end

% multiplicación:  Multiplica el polimonio P de grado n por la constante K 

local P K Mult R in
   proc{Mult P K R}
      {Record.map
       P 
      fun {$ X } X*K end R}
   end
   P = p(0:5 1:3 2:2)
   K = 15
   {Mult P K R}
   {Browse R}
end

% división: Divide el polimonio P de grado n entre la constante K 
local P K DivPol R in
   proc{DivPol P K R}
	local T C in
	   {Record.map P IntToFloat T}
	   {Browse T}
	   {Int.toFloat K C}
	   {Record.map T fun{$ X } X/C end  R}
	end
   end
   P = p(0:5 1:15 2:90)
   K = 5
   {DivPol P K R}
   {Browse R}
end

% substracción Resta los polinomios P y Q y deja el resultado en R
local P Q Resta R in
   proc{Resta P Q R}
      {Record.zip
       P Q
      fun {$ X Y} X-Y end R}
   end
   P = p(0:5 1:3 2:2)
   Q = q(0:6 1:8 2:5)
   {Resta P Q R}
   {Browse R}
end

% pretty printing c: Recibe un polinomio y una variable de retorno

local Prettify P R in
   proc{Prettify P R}
      local A B C in
      {Record.mapInd
       P
       fun {$ C G}
	     "+("#G#"X^"#C#")"
       end A}
	 {Record.toList A B}
	 {List.reverse B C}
	 {List.toTuple '#' C R}
      end
   end
   P = p(0:5 1:3 2:2)
   {Prettify P R}
   {Browse {VirtualString.toAtom R}}
end

%{List.reverse +Xs ?Ys}
