

%TASK 3 - PEDRO SALAZAR PAREDES - 201520639


%Create a process that given three numbers returns the maximum
local Max3 X Y Z R T in
   proc {Max3 X Y Z R} %Retorna el máximo en R
      local Y1 in
	 if X > Y then Y1 = X else Y1 = Y end
	 if Z > Y1 then R = Z else R = Y1 end
	 end
   end
   {Max3 2 3 1 T}
   {Show T}
end
