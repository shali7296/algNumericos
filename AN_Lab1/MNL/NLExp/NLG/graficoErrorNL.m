function graficoErrorNL(name,errorBi,errorNe,errorRF,errorSe,errorSc)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([-1 3]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 20]);

title(strcat(name,': errores con los metodos no lineales'),'Interpreter','latex');

plot(errorBi); 
hold on;
plot(errorNe,':r*');
hold off;
hold on;
plot(errorRF,'--');
hold off;
hold on;
plot(errorSe,'-go');
hold off;
hold on;
plot(errorSc);
hold off;

legend('Biseccion','Newton-Raphson','Regula Falsi','Secante','Schroder');

saveas(figure1,strcat('AN_Lab1/MNL/NLExp/NLG/Imagenes/ErrorNL', name) , 'png');

end
