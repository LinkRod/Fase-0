# 99 elefantes
elefantes = 1
parte_1    = " elefante se balanceaba, sobre la tela de una araña. Como veían que resistía, fue a llamar otro elefante."
parte_2    = " elefantes se balanceaban, sobre la tela de una araña. Como veían que resistía, fueron a llamar otro elefante."

while elefantes < 100
  if elefantes == 1
    puts elefantes.to_s + parte_1
  else
    puts elefantes.to_s + parte_2
  end

  elefantes = elefantes + 1
end