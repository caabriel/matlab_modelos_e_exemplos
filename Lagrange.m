function yint = Lagrange(x,y,xx)
% Polinomio Interpolador de Lagrange
% -> A funcao usa o polinomio interpolador de Lagrange de grau (n-1) com base em pontos dados
%    para calcular o valor de yint(variavel dependente)
% entradas:
%          x - variaveis independentes
%          y - variabeis dependentes
%          xx - valor da variavel indepentente em que a interpolacao é calculada
% saida:
%       yint - valot interpolado da variavel dependente
% exemplo de entrada:
% >>format long
% >> T = [-40 0 20 50]
% >> d = [1.52 1.29 1.2 1.09]
% >> find_x = Lagrange(T,t,15)

n = length(x);
if length(y)~=n, error('x e y devem ter o mesmo tamanho');end

s=0;

for i=1:n
    produto = y(i)
    for j=1:n
        if i ~= j
          produto = produto * (xx-x(j))/(x(i)-x(j));
        endif
    endfor
    s = s + produto;
endfor    
yint = s;
endfunction
