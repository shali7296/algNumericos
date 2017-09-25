function xInicial = reglaFourier(f,fd1,fd2,a,b)
f = inline(f);
fd1 = inline(fd1);
fd2 = inline(fd2);

if sign(f(a))~=sign(f(b)) && fd1(a)~=0 && fd1(b)~=0 && fd2(a)~=0 && fd2(a)~=0
    if f(a)*fd2(a) > 0
    xInicial = a;
    else if f(b)*fd2(b) > 0
            xInicial = b;
        end
    end
else
    disp('No hay convergencia en ese intervalo');
end

end

