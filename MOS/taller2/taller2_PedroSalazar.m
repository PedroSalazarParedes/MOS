% Inicializacion de los nodos

Coordenadas = rand(2,100).*100; %Matriz aleatoria con las coordenadas de cada uno de los 100 nodos
Coordenadas = round(Coordenadas); %Redondeo para que no sea horrible

S = randi(100); %Nodo salida
D = randi(100); %Nodo destino

while S == D %Loop para garantizar que D y S son diferentes
    D = randi(100); 
end

Dist = Inf(100,100); %Matriz con las distancias, son infito por defecto.

%Poblaci?n de la martiz de distancias
for i = 1:100
    for  j = 1:100
        dist = sqrt((Coordenadas(1,i)-Coordenadas(1,j))^2 + (Coordenadas(2,i)-Coordenadas(2,j))^2);
        if dist <=14 
            Dist(i,j) = dist;
        end
    end
end

SP = dijkstra_v2(Dist, S, D); %Uso de la funcion para el calculo del camino mas corto

Dist(~isfinite(Dist))=0; %Inf -> 0 para que no pinte arcos de costo inf

P = plot(graph(Dist),'XData',Coordenadas(1,:),'YData',Coordenadas(2,:));
if length(SP) > 1
    highlight(P, SP, 'NodeColor', 'r', 'EdgeColor','r','LineWidth',1.5); %Solo pinta el camino cuando existe
end






