clc;
close all;
clear all;
%no voy a usar el toolbox de matematica simbolica porque quiero practicar
%metodos numericos

%1.1
ezplot('3*x^3-10*x^2-56*x+50'); %grafica de la funcion
hold on; 

%1.2 Max y min = las raices de la derivada
f = @(x) 3*x^3-10*x^2-56*x+50;
g = @(x) 9*x^2-20*x-56;
h = @(x) 18*x -20;
alfa = 1;
x = 1;
delta = 1;
epsilon = 0.001;
while abs(delta)> epsilon
    act = x;
    plot(x,f(x),'+m') %1.4 
    x = act - alfa*(g(act)/h(act));
    delta = act-x;
end

%1.3
plot(x,f(x),'*b'); 

%1.5 - Todo otra vez pero con alfa = 0.6
alfa = 0.6;
x = 1;
delta = 1;
epsilon = 0.001;
while abs(delta)> epsilon
    act = x;
    plot(x,f(x),'or') %1.4 
    x = act - alfa*(g(act)/h(act));
    delta = act-x;
end
hold off;
