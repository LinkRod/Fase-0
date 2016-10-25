# 99 Elefantes
var1 = 1
loop do
    puts (var1.to_s) + ' elefantes se columpiaban sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante '
    var1 = (var1 + 1)
break if var1 == 100
end

# Otra forma
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



# Abuelita Sordita
def deaf_grandma
puts  "Hola, hijito."
print ""
resp = gets.chomp

  while resp != "BYE TQM"
    if resp == resp.upcase
    p "¡NO, NO DESDE 1983!"
    else
    p "HUH?! NO TE ESCUCHO, HIJO!"
    end

    print ""
    resp = gets.chomp
  end
"Hasta luego, hijito."
end

p deaf_grandma

# Tres veces
def deaf_grandma
puts  "Hola, hijito."
print ""
resp = gets.chomp
count = 0

  while count < 3
    if resp == resp.upcase
    p "¡NO, NO DESDE 1983!"
    else
    p "HUH?! NO TE ESCUCHO, HIJO!"
    end

    print ""
    resp = gets.chomp

    if resp == "BYE TQM"
     count = count + 1
    else
     count = 0 
   end

  end
"Hasta luego, hijito."
end

p deaf_grandma



# Lee El Error
# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
  string.reverse.swapcase.gsub(/[aeio]/,"*")
end

# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 
def max_letter_frequency_per_word(sentence)
    separate = sentence.split
    longitud = separate.select{|word| word.length > 3}
    cantidad = longitud.map{ |w| w.count("e") }.max
    cantidad
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
p dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"
p max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5



# Dale Estilo Al Código


