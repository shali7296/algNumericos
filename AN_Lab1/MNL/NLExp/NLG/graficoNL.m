function graficoNL(name,valorXBi,valorXNe,valorXRF,valorXSe,valorXSc)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([0 0.6]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 20]);

title(strcat(name,' con los metodos no lineales'),'Interpreter','latex');

plot(valorXBi); 
hold on;
plot(valorXNe,':r*');
hold off;
hold on;
plot(valorXRF,'--');
hold off;
hold on;
plot(valorXSe,'-go');
hold off;
hold on;
plot(valorXSc);
hold off;

legend('Biseccion','Newton-Raphson','Regula Falsi','Secante','Schroder');

saveas(figure1,strcat('AN_Lab1/MNL/NLExp/NLG/Imagenes/NL', name) , 'png');

end
