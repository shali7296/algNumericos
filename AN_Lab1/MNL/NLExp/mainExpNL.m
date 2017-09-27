%METODOS NO LINEALES
%FUNCIONES Y SUS DERIVADAS
f = '2*x-2^-x';
fd1 = '2^(-x)*log(2)+2';
fd2 = '-2^(-x)*(log(2))^2';

g = 'x^3-7*x^2+14*x-2';
gd1 = '3*x^2-14*x+14';
gd2 = '6*x-14';

%TOLERANCIA
toleranciaNL = 10^-15;

%INTERVALOS
af = 0;
bf = 1; 
ag = 0; 
bg = 1;

%ITERACIONES
iteraciones = 100;

%CALCULO DE X INICIALES
xInicialF = reglaFourier(f,fd1,fd2,af,bf);
xInicialG = reglaFourier(g,gd1,gd2,ag,bg);

%ECUACI�N 1: 2x-2^(-x)
[errorBiF,valorXBiF] = biseccion(f,af,bf,toleranciaNL,iteraciones);
[errorNeF,valorXNeF] = newton(f,fd1,xInicialF,iteraciones,toleranciaNL);
[errorSeF,valorXSeF] = secante(af,bf,iteraciones,f,toleranciaNL);
[errorRFF,valorXRFF] = regulaFalsi(af,bf,toleranciaNL,f);
[errorSCF,valorXSCF] = schroder(f,fd1,fd2,xInicialF,iteraciones,toleranciaNL);
graficoNL('FuncionF', valorXBiF,valorXNeF,valorXRFF,valorXSeF,valorXSCF);
graficoErrorNL('FuncionF', errorBiF,errorNeF,errorRFF,errorSeF,errorRFF);

%EXPORTACION DE DATOS EN .mat
save('AN_Lab1/MNL/NLExp/data/biseccionF.mat','errorBiF','valorXBiF');
save('AN_Lab1/MNL/NLExp/data/newtonF.mat','errorNeF','valorXNeF');
save('AN_Lab1/MNL/NLExp/data/secanteF.mat','errorSeF','valorXSeF');
save('AN_Lab1/MNL/NLExp/data/regulaFalsiF.mat','errorRFF','valorXRFF');
save('AN_Lab1/MNL/NLExp/data/schroderF.mat','errorSCF','valorXSCF');

%ECUACION 2: x^3-7x^2+14x-2 
[errorBiG,valorXBiG] = biseccion(g,ag,bg,toleranciaNL,iteraciones);
[errorNeG,valorXNeG] = newton(g,gd1,xInicialG,iteraciones,toleranciaNL);
[errorSeG,valorXSeG] = secante(ag,bg,iteraciones,g,toleranciaNL);
[errorRFG,valorXRFG] = regulaFalsi(ag,bg,toleranciaNL,g);
[errorSCG,valorXSCG] = schroder(g,gd1,gd2,xInicialG,iteraciones,toleranciaNL);
graficoNL('FuncionG', valorXBiG,valorXNeG,valorXRFG,valorXSeG,valorXSCG);
graficoErrorNL('FuncionG', errorBiG,errorNeG,errorRFG,errorSeG,errorRFG);

%EXPORTACION DE DATOS EN .mat
save('AN_Lab1/MNL/NLExp/data/biseccionG.mat','errorBiG','valorXBiG');
save('AN_Lab1/MNL/NLExp/data/newtonG.mat','errorNeG','valorXNeG');
save('AN_Lab1/MNL/NLExp/data/secanteG.mat','errorSeG','valorXSeG');
save('AN_Lab1/MNL/NLExp/data/regulaFalsiG.mat','errorRFG','valorXRFG');
save('AN_Lab1/MNL/NLExp/data/schroderG.mat','errorSCG','valorXSCG');

%METODO NEWTON MULTIVARIABLE (2 variables)
%FUNCIONES Y SUS DERIVADAS
f1 = 'x^2-10*x+y^2+8';
f2 = 'x*y^2+x-10*y+8';
df1x = '2*x-10+0*y';
df1y = '2*y+0*x';
df2x = 'y^2+1+0*x';
df2y = '2*x*y-10';

%TOLERANCIA
toleranciaNMV = 10^-10;

%ITERACIONES
iteraciones = 100;

%VALORES INICIALES
xInicialNMVF = 0;
yInicialNMVF = 0;

[matrix,errF1,errF2] = newtonMultivariableDos(xInicialNMVF,yInicialNMVF,iteraciones,f1,f2,df1x,df1y,df2x,df2y,toleranciaNMV);
graficoNMV2('Funcion1',matrix);
graficoErrorNMV2('Function1',errF1,errF2);


%EXPORTACION DE DATOS EN .mat
save('AN_Lab1/MNL/NLExp/data/newtonMV2.mat','matrix','errF1','errF2');

%METODOS NEWTON MULTIVARIABLE (3 VARIABLES)
%FUNCIONES Y SUS DERIVADAS
g1 = 'x^2+y+0*z-37';
g2 = 'x-y^2++0*z-5';
g3 = 'x+y+z-3';
dg1x = '2*x+0*y+0*z';
dg1y = '1+0*x+0*y+0*z';
dg1z = '0+0*x+0*y+0*z';
dg2x = '1+0*x+0*y+0*z';
dg2y = '-2*y+0*x+0*z';
dg2z = '0+0*x+0*y+0*z';
dg3x = '1+0*x+0*y+0*z';
dg3y = '1+0*x+0*y+0*z';
dg3z = '1+0*x+0*y+0*z';

%VALORES INICIALES
xInicialNMVG = 0;
yInicialNMVG = 0;
zInicialNMVG = 0;

[matriz,errG1,errG2,errG3] = newtonMultivariableTres(xInicialNMVG,yInicialNMVG,zInicialNMVG,iteraciones,g1,g2,g3,dg1x,dg1y,dg1z,dg2x,dg2y,dg2z,dg3x,dg3y,dg3z,toleranciaNMV);
graficoNMV3('Funcion2',matriz);
graficoErrorNMV3('Funcion2',errG1,errG2,errG3);

%EXPORTACION DE DATOS EN .mat
save('AN_Lab1/MNL/NLExp/data/newtonMV3.mat','matriz','errG1','errG2','errG3');