function v_fim = velocidade1(dt,ti,tf,vi)
  %solucao de euler para a velocidade do salto
  % entrada:
  %         dt = passo de tempo(s)
  %         ti = tempo inicial(s)
  %         tf = tempo final(s)
  %         vi = velocidade inicial da variavel dependente(m/s)
  %saida:
  %         v_fim = velocidade em tf(m/s)
  %
  %       v_(i+1) = v_i + d(v_i)/dt * delta(t)
  %
  %
  t=ti;
  v=vi;
  h=dt;

  while(1)
    if (t + dt > tf)
      h = tf-t;
    endif
    dvdt = deriv(v);
    v = v + dvdt * h;
    t= t+h;
    if (t>=tf)
      break
    endif


  end
v_fim = v;
endfunction

function dv = deriv(v) #derivada d
  dv = 9.81 - (0.25/68.1) * v*abs(v);
endfunction

