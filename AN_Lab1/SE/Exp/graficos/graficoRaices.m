function graficoRaices(name,raizGJ,raizGS,raizLLT,raizLU,raizQR)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([0 10]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 100]);

title(strcat(name,' con los metodos no lineales'),'Interpreter','latex');

plot(raizGJ[]); 
hold on;
plot(raizGS,':r*');
hold off;
hold on;
plot(raizLLT,'--');
hold off;
hold on;
plot(raizLU,'-go');
hold off;
hold on;
plot(raizQR);
hold off;

legend('Gauss-Jacobi','Gauss-Seidel','LLT','LU','QR');

saveas(figure1,strcat('AN_Lab1/SE/Exp/graficos/Imagenes/figuraGrafico', name) , 'png');

end

