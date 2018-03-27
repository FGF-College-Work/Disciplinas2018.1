clear all
close all
clc

A=[3 2 4; 0 1/3 2/3; 0 0 -8];
b=[1; 5/3; 0];
n=length(A);

x(n) = b(n)/A(n,n);
for i=n-1 : -1 : 1
	soma = 0;
	for j = i+1 : n
		soma = soma+A(i,j)*x(j);
	end
	x(i) = (b(i)-soma)/A( i , i);
end
disp("a solucao eh =")
disp(x)		
