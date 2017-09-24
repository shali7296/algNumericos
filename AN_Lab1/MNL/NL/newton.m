% xInicial = input('Ingrese un valor inicial de x: ');
% funcion = input('Ingrese una funci�n: ','s');
% it_max = input('Coloque una cantidad m�xima de iteraciones: ');

function [errorAbs,xr] = newton(funcion,funcionDerivada,xInicial,it_max,tolerancia)
xr = xInicial;
it = 1;
%syms x;
%syms y;
%syms z;
%funcionDerivada = diff(funcion);
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