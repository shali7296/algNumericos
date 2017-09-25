% %punto inicial, iteracion,funciones, derivadas
% xOld = input('Ingrese x inicial: ');
% yOld = input('Ingrese y inicial: ');
% iteracion = input('Ingrese la iteración a la que desea llegar: ');
% f1 = input('Ingrese f1: ','s');
% f2 = input('Ingrese f2: ','s');
% df1x = input('Ingrese derivada x de f1: ','s');
% df1y = input('Ingrese derivada y de f1: ','s');
% df2x = input('Ingrese derivada x de f2: ','s');
% df2y = input('Ingrese derivada y de f2: ','s');

function matrizNueva = newtonMultivariableDos(xOld,yOld,iteracion,f1,f2,df1x,df1y,df2x,df2y,tolerancia)
f1 = inline(f1);
f2 = inline(f2);
df1x = inline(df1x);
df1y = inline(df1y);
df2x = inline(df2x);
df2y = inline(df2y);
it = 1;
errorf1 = abs(f1(xOld,yOld));
errorf2 = abs(f2(xOld,yOld));
while (errorf1 > tolerancia || errorf2 > tolerancia) && it <= iteracion
    matriz = [df1x(xOld,yOld) df1y(xOld,yOld); df2x(xOld,yOld) df2y(xOld,yOld)];
    J = inv(matriz);    
    matrizNueva = [xOld; yOld] - (J*[f1(xOld,yOld);f2(xOld,yOld)]);
    xOld = matrizNueva(1,1);
    yOld = matrizNueva(2,1);
    errorf1 = abs(f1(xOld,yOld))
    errorf2 = abs(f2(xOld,yOld))
    it = it+1
end
end