function [error, valorX] = secante(xOld,xActual,it_max,funcion,tolerancia)
it = 1;
funcion = inline(funcion);
error = [];
valorX = [];
while it < it_max
    d = funcion(xActual)-funcion(xOld);
    if d == 0
        it = it_max;
    else
        xNew = xActual - ((funcion(xActual)*(xActual-xOld))/d);
        errorAbs = abs(xNew-xActual);
        valorX = [valorX xNew];
        error = [error errorAbs];
        xOld = xActual;
        xActual = xNew;
        if errorAbs < tolerancia
            it = it_max;
        else
            it = it + 1;
        end    
    end    
end
end