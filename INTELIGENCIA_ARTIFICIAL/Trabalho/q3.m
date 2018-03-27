clear all;
close all;
clc

load('ex1data3.txt');


w0 = randn;
w1 = randn;
w2 = randn;
w3 = randn;
w4 = randn;
w5 = randn;

lambda = [0,1,2,3,4,5];
X = ones( 30,1);
for ( i =1: 6)

W = [w0, w1,w2,w3,w4,w5;];

W = inv(X'*X + lambda(i) *Id) * X'*Y;



X = horzcat(X, ex1data3(:, 1:5));

Y = ex1data3(:,6);

YB = ones(30,1);

YB = X * W;

erro = ones(30,1);

erro = Y - YB;

erroquadradado = erro' * erro

Id = eye(6);
Id(1,1) = 0;



load('ex1data3teste.txt');


Xteste = ones(17,1);

Xteste = horzcat( Xteste, ex1data3teste(:, 1:5));

Yteste = ex1data3teste(:,6);

YBteste = ones(17,1);

YBteste = Xteste * W;

erroteste = ones(17,1);

erroteste = Yteste - YBteste;

erroquadradadoteste = erroteste' * erroteste;


endfor