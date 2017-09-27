function graficoNMV3(name,matrizNMV)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([-40 40]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 11]);

title(strcat(name,' con el metodo de Newton Multivariable'),'Interpreter','latex');

plot(matrizNMV(1,:));
hold on;
plot(matrizNMV(2,:));
hold off;
hold on;
plot(matrizNMV(3,:));
hold off;

legend('x1','x2','x3');

saveas(figure1,strcat('AN_Lab1/MNL/NLExp/NLG/Imagenes/NMV', name) , 'png');

end
