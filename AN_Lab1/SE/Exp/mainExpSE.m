% se cargan los datos
A1 = load('289x289/A289.dat');
b1 = load('289x289/b289.dat');
p = load('289x289/nodos.dat'); %289x2
e = load('289x289/fronteras.dat');%64x7
t = load('289x289/elementos.dat');%512 x 4
% se trasponen los nodos, frontera y elementos
p0 = p'; %2x289
e0 = e';%7x64
t0 = t';%4 x 512 
u = linsolve(A1,b1);

xInicial1=zeros(1,289);
raizGS1 = GaussSeidel(A1,b1',xInicial1,1000);

raizGJ1 = GaussJacobi(A1,b1',xInicial1,1000);

raizLU1 = LU(A1,b1');

raizLLT1 = LLT(A1,b1');

raizQR1 = QR(A1, b1);

A2 = load('1089x1089/A1089.dat');
b2 = load('1089x1089/b1089.dat');
p = load('1089x1089/nodos.dat');
e = load('1089x1089/fronteras.dat');
t = load('1089x1089/elementos.dat');
% se trasponen los nodos, frontera y elementos
p0 = p'; %2x289
e0 = e';%7x64
t0 = t';%4 x 512 
u = linsolve(A2,b2);

xInicial2=zeros(1,1089);
raizGS2 = GaussSeidel(A2,b2',xInicial2,10000);

raizGJ2 = GaussJacobi(A2,b2',xInicial2,10000);

raizLU2 = LU(A2,b2');

raizQR2 = QR(A2, b2);

raizLLT2 = LLT(A2,b2');

A3 = load('4225x4225/A4225.dat');
b3 = load('4225x4225/b4225.dat');
p = load('4225x4225/nodos.dat');
e = load('4225x4225/fronteras.dat');
t = load('4225x4225/elementos.dat');
% se trasponen los nodos, frontera y elementos
p0 = p'; %2x289
e0 = e';%7x64
t0 = t';%4 x 512 
u = linsolve(A3,b3);

xInicial3=zeros(1,4225);
raizGS3 = GaussSeidel(A3,b3',xInicial3,10000);

raizGJ3 = GaussJacobi(A2,b2',xInicial3,10000);

raizLU3 = LU(A3,b3');

raizQR3 = QR(A3, b3);

raizLLT3 = LLT(A3,b3');