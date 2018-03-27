function regressao()
clear all
close all
clc

data=load("ex1data1.txt");
 x = dados(:,1);
 y = dados(:,2);
 n=length(y);

 #calcula valor de x1 e y1
 xs=0, ys=0; 
 for i=1 : n
     xs += x(i);
     ys += y(i);
 end

 #calcula s = somatório de xi.yi 
 s= 0;
 for i=1 : n
 	s += (y(i)*x(i));
 end

 #calcula t = produto do somatório de xi e yi
 t = (xs*ys)/n;

 #calcula o somatório de xi ao quadrado
 xq = 0;
 for i=1 : n
 	xq += x(i).^2;
 end

 #calcula quadrado do somatório
 sxq = (xs*xs)/n;
  
 #calcula b1(interceptor)
 b1 = (s - t) /(xq- sxq);

 
 #calcula b0(inclinação)
 xm= xs/n;
 ym= ys/n;
 b0 = ym - (b1*xm);


 #calcula sqt(soma do quadrado total) e sqe(soma de quadrados do erro)
 sqe = 0;
 sqt = 0;
 for i=1 : n
     yb = (b0+(b1*x(i)));
 	sqe += (y(i)-yb).^2;
     sqt += (y(i)-ym).^2;
 end

 #calculando coeficiente de determinacao
 r2 = 1 - (sqe/ sqt);


epocas = 1000;
alfa = 0.001;
eqm = 0;
erros=[];
   # hold on
    #subplot(2,1,1)
    #plot(dados(:,1), dados(:,2),'x');
    #xlabel('Variáveis x');
    #ylabel('Variáveis y');
    #title('Dados exercício 1');

    b0 = rand(1);
    b1 = rand(1)
for i = 1:epocas,
		eqm=0;
	for j = 1:n,
		y_h = (b0+(b1*x(j)));
		erro= y(j) - y_h;
		b0 = b0+ (alfa/n*erro);
		b1 = b1 + (alfa/n*erro*x(j));
		eqm+= (erro.^2);
	end
		erros=[erros, eqm/n];
end
    # plot(x,b0 + b1*x,'r')
     #subplot(2,1,2)
     plot([1:1:1000], erros)
	hold on;
	xlabel('Épocas');
	ylabel('Erro Quadrático Médio');
	title('Época 1000');
	disp(b0)
	disp(b1)
 
endfunction


