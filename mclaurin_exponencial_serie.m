function[fx,ea,iter] = mclaurin_serie(x,es,maxit)
# Serie de Maclaurin da funcao exponencial
#entrada:
#         x - valor avaliadp
#         es - criterio de parada(0.0001)
#         maxit - maximo de iteracoes(50)
#saida:
#         fx = valor estimado
#         er = erro relativo(%)
#         iter = numero de iteracoes
#
#** nargin() - Relate o número de argumentos de entrada para uma função.
#   isempity() - Retorna true se a for uma matriz vazia (qualquer uma de suas dimensões for zero).
# !!!!coloque >format long
#inicializacao de padroes:
if nargin<2|isempty(es), es=0.0001;end
if nargin<3|isempty(maxit), maxit = 50;end

iter=1;
sol=1;
ea=100;

#calculo iterativo
while(1)
  sol_previa = sol;
  sol = sol + x^iter / factorial(iter);
  iter = iter + 1;
  if sol ~= 0
    ea = abs((sol-sol_previa)/sol)*100;
  endif
  if ea<=es | iter>=maxit, break,end

end

fx = sol;

endfunction
