clear all
close all


data=load("ex1data1.txt");

%Figura com os dados na janela
plot(data(:,1),data(:,2),'+b;Dados;');

%Titulo para a janela
title("Rafael\nDados ");

%colunas na janela
xlabel('coluna 1');
ylabel('coluna 2');

%salva em png no diretório
print('Dados.png' , '-dpng');

w0=randn;
w1=randn;
alpha = 0.001;

for epocas=1:50,
    %idx=randperm(97);
    %data=data(idx,:);
    y=data(:,2);
    x=data(:,1);

       for i=1:97,
              yi=w0+w1*x(i,1);
              e(i)=y(i)-yi;
             w0=w0+alpha*e(i);
             w1=w1+alpha*e(i)*x(i);

       endfor

    Ea(epocas)=sum(e.^2);
endfor


plot(1:50,Ea);
%Titulo para a janela
title("Rafael\nQuestao1");
print('Questao1.png' , '-dpng');

