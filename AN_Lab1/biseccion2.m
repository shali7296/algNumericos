function [ errorFinal, valores, iteraciones ] = biseccion2( n, a, b, error, f )
iteraciones = [];
m=(a+b)/2;
errorFinal = 100;
valores = [];
i=0;
while (errorFinal>error && (n>=i || n==0))
    m=(a+b)/2;
    valores = [valores m];
    iteraciones = [iteraciones i];
    if f(m)==0
        a=m;
        b=m;
    end
    if sign(f(a))==sign(f(m))
        a=m;
    else
        b=m;
    end
    errorFinal = abs((a+b)/2-m);
    i = i + 1;
end
end

