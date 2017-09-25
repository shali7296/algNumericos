% a = input('Ingrese el valor de a: ');
% b = input('Ingrese el valor de b: ');
% tolerancia = input('Ingrese la tolerancia: ');
% funcion = input('Ingrese la función: ','s');

function [error,c] = regulaFalsi(a,b,tolerancia,funcion)
funcion = inline(funcion);
c = a;
error = abs(funcion(c));
while error > tolerancia
   c = b - funcion(b)*(b - a)/(funcion(b) - funcion(a));
   if funcion(c) == 0
       a = c;
       b = c;
   else if sign(funcion(a)) == sign(funcion(c))
       a = c;
       else if sign(funcion(b)) == sign(funcion(c))
       b = c;
           end
       end
   end
   disp('El valor de c es: ');
   disp(c);
   error = abs(funcion(c))
end    
end