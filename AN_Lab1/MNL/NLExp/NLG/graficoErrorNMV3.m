function graficoErrorNMV3(name,error1,error2,error3)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([-1 10]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 20]);

title(strcat(name,': errores con el metodo de Newton Multivariable'),'Interpreter','latex');

plot(error1); 
hold on;
plot(error2);
hold off;
hold on;
plot(error3);
hold off;

legend('x1','x2','x3');

saveas(figure1,strcat('AN_Lab1/MNL/NLExp/NLG/Imagenes/ErrorNMV', name) , 'png');

end
