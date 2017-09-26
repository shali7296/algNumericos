function [error, valorX] = schroder(funcion,fd1,fd2,xInicial,it_max,tolerancia)
funcion = inline(funcion);
fd1 = inline(fd1);
fd2 = inline(fd2);
error = [];
valorX = [];
xOld = xInicial;
it = 1;
while it < it_max
    xNew = xOld - ((funcion(xOld)*fd1(xOld))/((fd1(xOld))^2 - (funcion(xOld)*fd2(xOld))));
    errorAbs = abs(xNew-xOld);
    valorX = [valorX xNew];
    error = [error errorAbs];
    xOld = xNew;
    if errorAbs < tolerancia
        it = it_max;
    else
        it = it + 1;
    end
end    
end