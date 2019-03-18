clc;
close all;
clear all;

%3.1 3.2 3.3 3.4

figure('Name','alfa = 1');
ezsurf('(1-x)^2+100*(y-x^2)^2'); %grafica de la funcion
hold on;
syms x y;
f =  (1-x)^2+100*(y-x^2)^2;
g = gradient(f,[x,y]);
h = hessian(f,[x,y]);
x = 0;
y = 0;
epsilon = 0.001;
alfa = 1;
grad = subs(g);
ev = subs(f);
plot3(x,y,ev,'*r');
while norm(grad) > epsilon
    grad = subs(g);
    hess = subs(h);
    a = [x, y] - (alfa*inv(hess)*grad)';
    x = a(1);
    y = a(2);
    ev = subs(f);
    plot3(x,y,ev,'*r');
end
hold off;


%3.5
figure('Name','alfa = 0.9');
ezsurf('(1-x)^2+100*(y-x^2)^2'); %grafica de la funcion
hold on;
syms x y;
f =  (1-x)^2+100*(y-x^2)^2;
g = gradient(f,[x,y]);
h = hessian(f,[x,y]);
x = 0;
y = 0;
epsilon = 0.001;
alfa = 0.9;
grad = subs(g);
ev = subs(f);
plot3(x,y,ev,'*r');
while norm(grad) > epsilon
    grad = subs(g);
    hess = subs(h);
    a = [x, y] - (alfa*inv(hess)*grad)';
    x = a(1);
    y = a(2);
    ev = subs(f);
    plot3(x,y,ev,'*r');
end
hold off;


