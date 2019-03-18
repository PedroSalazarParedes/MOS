

%TASK 4 - PEDRO SALAZAR PAREDES - 201520639


% Create a process that converts from decimal number notation to roman number
% notation (The largest numbers you need to convert are about 3000)
% I = 1
% V = 5
% X = 10
% L = 50
% C = 100
% D = 500
% M = 1000
% El algoritmo es separar los digitos y hacer:
% Miles concat Cientos concat Decenas concatg Unidades
% Tener en cuenta que 4 y 9 son restando

%{Show (1234 mod 1000 - 1234 mod 100) div 100}

local Dec2Rom Rom in
   proc {Dec2Rom Dec Rom} %Recibe un número en formato decimal y lo devuelve en número romanos
      local M C D U in
	 %miles
	 thread Mod Celda in %Estaba probando la concurrencia pues las partes no dependen entre sí, no estoy seguro de que sea más rápido pero funciona
	 Mod = Dec div 1000
	 {NewCell nil Celda}
	 if Mod == 0 then M = nil
	 else
	    for I in 1..Mod do
	       Celda := {Append @Celda [&M]}
	    end
	    M = @Celda
	 end
	 end
	 %Centenas
	 thread Mod Celda in
	 Mod = (Dec mod 1000 - Dec mod 100) div 100
	 {NewCell nil Celda}
	 if Mod == 0 then C = nil
	 elseif Mod < 4 then
	    for I in 1..Mod do
	       Celda := {Append @Celda [&C]}
	    end
	    C = @Celda
	 elseif Mod == 4 then C = [&C &D]
	 elseif Mod == 9 then C = [&C &M]
	 else
	    Celda := [&D]
	    for I in 6..Mod do
	       Celda := {Append @Celda [&C]}
	    end
	    C = @Celda
	 end
	 end
	 %Decenas
	 thread Mod Celda in
	 Mod = (Dec mod 100 - Dec mod 10) div 10
	 {NewCell nil Celda}
	 if Mod == 0 then D = nil
	 elseif Mod < 4 then
	    for I in 1..Mod do
	       Celda := {Append @Celda [&X]}
	    end
	    D = @Celda
	 elseif Mod == 4 then D = [&X &L]
	 elseif Mod == 9 then D = [&X &C]
	 else
	    Celda := [&L]
	    for I in 6..Mod do
	       Celda := {Append @Celda [&X]}
	    end
	    D = @Celda
	 end
	 end
	 %Unidades
	 thread Mod Celda in
	 Mod = (Dec mod 10 - Dec mod 1) div 1
	 {NewCell nil Celda}
	 if Mod == 0 then U = nil
	 elseif Mod < 4 then
	    for I in 1..Mod do
	       Celda := {Append @Celda [&I]}
	    end
	    D = @Celda
	 elseif Mod == 4 then U = [&I &V]
	 elseif Mod == 9 then U = [&I &X]
	 else
	    Celda := [&V]
	    for I in 6..Mod do
	       Celda := {Append @Celda [&I]}
	    end
	    U = @Celda
	 end
	 end
	 Rom = M#C#D#U
      end
   end
   {Dec2Rom 3017 Rom}
   {Browse {VirtualString.toAtom Rom}} %para poder mostrar el virtual string sin hacer maromas
   %acá va el llamado
end


%{Browse {Append sdad dsadas}}