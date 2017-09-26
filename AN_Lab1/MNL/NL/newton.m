function [error,valorX] = newton(funcion,funcionDerivada,xInicial,it_max,tolerancia)
xr = xInicial;
it = 1;
funcion = inline(funcion);
funcionDerivada = inline(funcionDerivada);
error = [];
valorX = [];
while it < it_max
   xrOld = xr;
   xr = xrOld - (funcion(xrOld)/funcionDerivada(xrOld));
   errorAbs = abs(xr-xrOld);
   valorX = [valorX xr];
   error = [error errorAbs];
   if errorAbs < tolerancia
       it = it_max;
   else
       it = it + 1;
   end    
end
end