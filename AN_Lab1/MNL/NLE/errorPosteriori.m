function error = errorPosteriori(xActual,xAnterior)
    e = abs(xActual-xAnterior);
    error = e/xActual;
end
