clc;
close all;
clear all;

%1.1
ezplot('x^5-8*x^3+10*x+6',[-3,3]); %grafica de la funcion
hold on; 

%1.2 Max y min = las raices de la derivada
f = @(x) x^5-8*x^3+10*x+6;
g = @(x) 5*x^4-24*x^2+10;
h = @(x) 20*x^3-48*x;
puntosCriticos = double.empty;

for i = linspace(-3,3,100)
    x = i;
    alfa = 1;
    delta = 1;
    epsilon = 0.001;
    while abs(delta)> epsilon
    act = x;
    x = act - alfa*(g(act)/h(act));
    delta = act-x;
    end
    if isempty(puntosCriticos)
        puntosCriticos(1) = x;
        plot(x,f(x),'*b'); 
    elseif abs(puntosCriticos(1:end)-x) > 0.2
        puntosCriticos(end+1) = x;
        plot(x,f(x),'*b'); 
    end
end
hold off;
disp('Los maximos y minimos de la funcion son:');
disp(sort(puntosCriticos));
