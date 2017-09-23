% xInicial = input('Ingrese un x inicial: ');
% funcion = input('Ingrese una funcion: ','s');
% it_max = input('Coloque la m�xima cantidad de iteraciones: ');

function xNew = schroder(funcion,xInicial,it_max,tolerancia)
syms x;
fd1 = diff(funcion,x);
fd2 = diff(funcion,x,2);
funcion = inline(funcion);
fd1 = inline(fd1)
fd2 = inline(fd2)
xOld = xInicial;
it = 1;
while it < it_max
    xNew = xOld - ((funcion(xOld)*fd1(xOld))/((fd1(xOld))^2 - (funcion(xOld)*fd2(xOld))));
    errorAbs = abs(xNew-xOld);
    xOld = xNew;
    disp('xNew es: ');
    disp(xNew)
    if errorAbs < tolerancia
        it = it_max;
    else
        it = it + 1
    end
end    
end