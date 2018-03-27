clear all;
close all;
clc
%Rafael 
%Lista 1 Aprendizagem Automática

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  1. Regressão Linear Univariada

%carregando dados
data = load("ex1data1.txt");

%Figura com os dados na janela
plot(data(:,1),data(:,2),'+b;Dados;');

%Titulo para a janela
title("Rafael\nDados ex1data1");

%colunas na janela
xlabel('coluna 1');
ylabel('coluna 2');

%salva em png no diretório
print('Dados.png' , '-dpng');

alpha = 0.001;
epocas = 1000;
w0 = rand;
w1 = rand;

disp("Regressão Linear Univariada");
disp("Coeficientes iniciais");
disp("w0 =" );
disp(w0);

disp("\nw1 =");
disp(w1);

for j = 1 : epocas
	idx = randperm(size(data)(1));
	%disp("idx =");
	%disp(j);
	
	for i = 1 : size(data)(1)
		xi = data(i , 1);
		
		ybi = w1*xi + w0;
		
		erro(i) = data(i , 2) - ybi;
		
		w0 = w0 + alpha*erro(i);
		w1 = w1 +alpha*erro(i)*xi;
	end
	ea(j) = sum(erro.^2);
end

disp("\nCoeficientes encontrados");
disp("w0 =" );
disp(w0);

disp("\nw1 =");
disp(w1);

%janela 
plot(1:1000 , ea);

%Titulo para a janela
title("Rafael\nRegressão Linear Univariada\nAlgoritmo gradiente descendente estocastico");

%colunas na janela
xlabel('Epocas');
ylabel('EQM');

%salva em png no diretório
print('epocasXeqm.png' , '-dpng');

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  2. Regressão Linear Multivariada

%Algoritmo Descendente Estocastico
%carregando dados
data = load("ex1data2.txt");

alpha = 0.01;
epocas = 100;
w0 = rand;
w1 = rand;
w2 = rand;

disp("\nRegressão Linear Multivariada");
disp("Coeficientes iniciais");
disp("w0 =" );
disp(w0);

disp("\nw1 =");
disp(w1);

disp("\nw2 =");
disp(w2);

for j = 1 : epocas
	idx = randperm(size(data)(1));
	%disp("idx =");
	%disp(j);
	
	for i = 1 : size(data)(1)
		x1i = data(i , 1);
		x2i = data(i , 2);
		
		ybi = w1*x1i + w2*x2i + w0;
		
		erro(i) = data(i , 3) - ybi;
		
		w0 = w0 + alpha*erro(i);
		w1 = w1 + alpha*erro(i)*x1i;
		w2 = w2 + alpha*erro(i)*x2i;
	end
	e(j) = sum(erro.^2);
end

disp("\nCoeficientes encontrados");
disp("w0 =" );
disp(w0);

disp("\nw1 =");
disp(w1);

disp("\nw2 =");
disp(w2);

%janela 
plot(1:100 , e);

%Titulo para a janela
title("Rafael\nRegressao Linear Multivariada\nAlgoritmo gradiente descendente estocastico");

%colunas na janela
xlabel('Epocas');
ylabel('EQM');

%salva em png no diretório
print('epocasXeqmMulti.png' , '-dpng');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Método dos Mínimos Quadrados

X = ones(size(data)(1),1);
X(: , 2:3) = data( : , 1 : 2);
Y = data( : , 3:3 );

w = inv(X'*X)*X'*Y;

disp('Metodos dos Quandrados minimos');
disp(w);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Método dos Mínimos Quadrados Regularizado
clear all;
close all;
clc

%carregando dados
data = load("ex1data3.txt");

%Aprendizagem
X = ones( 30 , 1);
X(: , 2:6) = data( 1:30 , 1 : 5);
Y = data( 1 : 30 , 6:6 );

I = eye(6); %matriz identidade
I(1 ,1) = 0;
for l = 0 : 5
	w = inv(X'*X + l*I)*X'*Y;
	for i = 1 : 30
		y_h = w'* X(i,:)';   
   		erro(i) = Y(i) - y_h;
	end
	eqm(l+1) = sum(erro.^2);
end

%janela 
plot(0:1:5 , eqm);

%Titulo para a janela
title("Rafael\nRegularizacao\nMetodo dos minimos quadrados");

%colunas na janela
xlabel('Lambda');
ylabel('EQM');

%salva em png no diretório
print('lambda.png' , '-dpng');

X = ones( size(data)(1) , 1);
X(: , 2:6) = data( : , 1 : 5);
Y = data( : , 6:6 );

for l = 0 : 5
	%w(: , l+1) = inv(X'*X + l*I)*X'*Y;
	for i = 31 : size(data)(1)
		y_h = w(: , l+1)'* X(i,:)';   
   		erro(i) = Y(i) - y_h;
	end
	eqm(l+1) = sum(erro.^2);
end

%janela 
plot(0:1:5 , eqm);

%Titulo para a janela
title("Rafael - Regularizacao - Teste\nMetodo dos minimos quadrados");

%colunas na janela
xlabel('Lambda');
ylabel('EQM');

%salva em png no diretório
%print('teste.png' , '-dpng');
