function [matrix,errF1,errF2] = newtonMultivariableDos(xOld,yOld,iteracion,f1,f2,df1x,df1y,df2x,df2y,tolerancia)
f1 = inline(f1);
f2 = inline(f2);
df1x = inline(df1x);
df1y = inline(df1y);
df2x = inline(df2x);
df2y = inline(df2y);
it = 1;
errorf1 = abs(f1(xOld,yOld));
errorf2 = abs(f2(xOld,yOld));
matrix = [];
errF1 = [];
errF2 = [];
while (errorf1 > tolerancia || errorf2 > tolerancia) && it <= iteracion
    matriz = [df1x(xOld,yOld) df1y(xOld,yOld); df2x(xOld,yOld) df2y(xOld,yOld)];
    J = inv(matriz);    
    matrizNueva = [xOld; yOld] - (J*[f1(xOld,yOld);f2(xOld,yOld)]);
    matrix = [matrix matrizNueva];
    xOld = matrizNueva(1,1);
    yOld = matrizNueva(2,1);
    errorf1 = abs(f1(xOld,yOld));
    errorf2 = abs(f2(xOld,yOld));
    errF1 = [errF1 errorf1];
    errF2 = [errF2 errorf2];
    it = it+1;
end
end