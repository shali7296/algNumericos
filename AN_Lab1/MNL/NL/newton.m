% xInicial = input('Ingrese un valor inicial de x: ');
% funcion = input('Ingrese una función: ','s');
% it_max = input('Coloque una cantidad máxima de iteraciones: ');

function [errorAbs,xr] = newton(funcion,xInicial,it_max,tolerancia)
xr = xInicial;
it = 1;
syms x;
funcionDerivada = diff(funcion,x);
funcion = inline(funcion);
funcionDerivada = inline(funcionDerivada);
while it < it_max
   xrOld = xr;
   xr = xrOld - (funcion(xrOld)/funcionDerivada(xrOld));
   errorAbs = abs(xr-xrOld);
   if errorAbs < tolerancia
       it = it_max;
   else
       disp('Error: ');  
       disp(errorAbs);
       it = it + 1
   end    
end   
disp('Raiz: ');
disp(xr);
end