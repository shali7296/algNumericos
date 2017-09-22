% xOld = input('Ingrese x0: ');
% xActual = input('Ingrese x1: ');
% it_max = input('Coloque una cantidad máxima de iteraciones: ');
% funcion = input('Ingrese la función: ','s');
% tolerancia = input('Ingrese la tolerancia: ');

function [errorAbs, xNew] = secante(xOld,xActual,it_max,funcion,tolerancia)
it = 1;
funcion = inline(funcion);
while it < it_max
    d = funcion(xActual)-funcion(xOld);
    if d == 0
        it = it_max;
    else
        xNew = xActual - ((funcion(xActual)*(xActual-xOld))/d);
        errorAbs = abs(xNew-xActual);
        xOld = xActual;
        xActual = xNew;
        disp('xNew es: ');
        disp(xNew);
        disp('error: ');
        disp(errorAbs);
        if errorAbs < tolerancia
            it = it_max;
        else
            it = it + 1
        end    
    end    
end
disp('Raíz es: ');
disp(xNew);
end