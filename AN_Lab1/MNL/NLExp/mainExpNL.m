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
xInicialF = reglaFourier(f,fd1,fd2,af,bf)
xInicialG = reglaFourier(g,gd1,gd2,ag,bg)

%ECUACIÓN 1: 2x-2^(-x)
[errorBiF, valorXBiF] = biseccion(f,af,bf,toleranciaNL,iteraciones)
[errorNeF,valorXNeF] = newton(f,fd1,xInicialF,iteraciones,toleranciaNL)
%secante(0,0.5,100,'x^2+x-1',10^-14);
[errorRFF,valorXRFF] = regulaFalsi(af,bf,toleranciaNL,f)
[errorSCF,valorXSCF] = schroder(f,fd1,fd2,xInicialF,iteraciones,toleranciaNL)

%ECUACION 2: x^3-7x^2+14x-2 
[errorBiG, valorXBiG] = biseccion(g,ag,bg,toleranciaNL,iteraciones)
[errorNeG,valorXNeG] = newton(g,gd1,xInicialG,iteraciones,toleranciaNL)
%secante(0,0.5,100,'x^2+x-1',10^-14);
[errorRFG,valorXRFG] = regulaFalsi(ag,bg,toleranciaNL,g)
[errorSCG,valorXSCG] = schroder(g,gd1,gd2,xInicialG,iteraciones,toleranciaNL)

