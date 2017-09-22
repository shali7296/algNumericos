% funcion = input('Ingrese una función: \n','s');
% funcion = inline(funcion);
% a = input('Ingrese un valor para a: \n');
% b = input('Ingrese un valor para b: \n');
% tolerancia = input('Ingrese la tolerancia: \n');
% it_max = input('Coloque una cantidad máxima de iteraciones: ');

function m = biseccion(funcion,a,b,tolerancia,it_max)
funcion=inline(funcion);
if b > a     
    it = 1;
    d = (b-a)/2;
    while d > tolerancia && it < it_max
        d = (b-a)/2;
         disp('Iteración ')
         disp(it)
         disp('d: ')
         disp(d) 
        m = a+d;
        if funcion(m) == 0
            a = m;
            b = m;
        else if sign(funcion(a)) == sign(funcion(m))
                a = m;
            else if sign(funcion(b)) == sign(funcion(m))
                    b = m;
                end
            end
        end  
        it = it + 1;
    end
    disp('La raíz de esta función es: ');
    disp(m);
else
    disp('ERROR: No existe raíz en ese intervalo')
end 
end