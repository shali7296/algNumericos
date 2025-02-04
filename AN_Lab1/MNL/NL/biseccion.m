function [error, valorX] = biseccion(funcion,a,b,tolerancia,it_max)
funcion=inline(funcion);
error = [];
valorX = [];
if b > a     
    it = 1;
    d = (b-a)/2;
    while d > tolerancia && it < it_max
        error = [error d];
        d = (b-a)/2;
        m = a+d;
        valorX = [valorX m];
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
else
    disp('ERROR: No existe ra�z en ese intervalo')
end 
end