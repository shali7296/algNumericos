function [er,valorX] = regulaFalsi(a,b,tolerancia,funcion)
funcion = inline(funcion);
c = a;
it = 0;
valorX = [];
er = [];
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
   valorX = [valorX c];
   er = [er error];
   it = it + 1;
   error = abs(funcion(c));
end    
end