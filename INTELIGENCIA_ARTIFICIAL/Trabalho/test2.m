
clear all
close all
clc

function regressao()
dados = load("ex1data2.txt");
 x = dados(:,1);
 y = dados(:,2);
 n=length(y);


 xs=0, ys=0; 
 for i=1 : n
     xs += x(i);
     ys += y(i);
 end


 s= 0;
 for i=1 : n
 s += (y(i)*x(i));
 end


 t = (xs*ys)/n;


 xq = 0;
 for i=1 : n
 	xq += x(i).^2;
 end


 sxq = (xs*xs)/n;
  

 b1 = (s - t) /(xq- sxq);

 

 xm= xs/n;
 ym= ys/n;
 b0 = ym - (b1*xm);



 sqe = 0;
 sqt = 0;
 for i=1 : n
     yb = (b0+(b1*x(i)));
 	sqe += (y(i)-yb).^2;
     sqt += (y(i)-ym).^2;
 end


 r2 = 1 - (sqe/ sqt);


epocas = 1000;
alfa = 0.001;
eqm = 0;
erros=[];


    b0 = rand(1);
    b1 = rand(1)
for i = 1:epocas,
		eqm=0;
	for j = 1:n,
		yh = (b0+(b1*x(j)));
		erro= y(j) - yh;
		b0 = b0+ (alfa/n*erro);
		b1 = b1 + (alfa/n*erro*x(j));
		eqm+= (erro.^2);
	end
		erros=[erros, eqm/n];
end

     plot(1:1:1000, erros);

	xlabel('Épocas');
	ylabel('Erro Quadrático Médio');
	title('Época 1000');
	disp(b0)
	disp(b1)
 
endfunction

