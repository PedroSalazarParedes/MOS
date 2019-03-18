

%TASK 2 - PEDRO SALAZAR PAREDES - 201520639


%Write an iterative and a recursive procedure to show the squares of the integers
%between 11 and 25

%iterative procedure
local IterSq in
   proc {IterSq}
      for I in 11..25 do %La I es un patrón, por eso no explota porque no la introduje
	 {Show I*I}
      end
   end
   {IterSq}
end

%recursive procedure
local RecSq in
   proc {RecSq}
      local Aux in
	 proc {Aux X Y} %Creo que funciona sin introducir X y Y porque son patrones, no variables
	    if X == Y then
	       {Show Y*Y}
	    else
	       {Show X*X}
	       {Aux X+1 Y}
	    end
	 end
	 {Aux 11 25}
      end
   end
   {RecSq}
end



