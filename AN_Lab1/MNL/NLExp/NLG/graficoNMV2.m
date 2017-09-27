function graficoNMV2(name,matrizNMV)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([0 1.2]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 7]);

title(strcat(name,' con el metodo de Newton Multivariable'),'Interpreter','latex');

plot(matrizNMV(1,:));
hold on;
plot(matrizNMV(2,:));

legend('x1','x2');

saveas(figure1,strcat('AN_Lab1/MNL/NLExp/NLG/Imagenes/NMV', name) , 'png');

end
