# Más Grande Que 20
def large(caracter)
  if caracter.length > 20
    caracter.upcase
  else
    caracter
  end
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir" 



# Rangos
def range (num)
  case num
  when 0..50
    p "#{num} is between 0 and 50"
  when 51..100
    p "#{num} is between 51 and 100"
  else
    p "#{num} is above 100"
  end
end

p range(10) == "10 is between 0 and 50"
p range(34) == "34 is between 0 and 50"
p range(79) == "79 is between 51 and 100"
p range(67) == "67 is between 51 and 100"
p range(54) == "54 is between 51 and 100"
p range(120) == "120 is above 100" 



# Detectar Substring
def shipping (address)
  lugar = (address)
  if lugar.include? "Mexico"
   "Order received"
  else
   "We only ship orders to Mexico"
  end
end

p shipping('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Order received"
p shipping('Geary Blvd 3320, San Francisco, Estados Unidos') == "We only ship orders to Mexico" 



# Saludar A Un Usuario
def say_hi (name)
  if name == "Hector"
    p "Welcome back"
  else
    p "Hi, #{name}"
  end
end

p say_hi('Hector') == "Welcome back"
p say_hi('Juan') == "Hi, Juan" 



# Mensaje De Número De Tarjeta De Crédito Inválido
def error_message (name, credit_card_type, credit_card_number)
  n = name
  cct = credit_card_type
  cn = credit_card_number
  "#{n}, The #{cct.upcase} Credit Card Number 'xxx-#{cn[-3..-1]}' You Provided is Invalid."
end

p error_message('Rodrigo', 'American Express', '205782460166975') == "Rodrigo, The AMERICAN EXPRESS Credit Card Number 'xxx-975' You Provided is Invalid."
p error_message('Carla', 'Visa', '3912888888881881') == "Carla, The VISA Credit Card Number 'xxx-881' You Provided is Invalid." 



# Métodos De String:
# Detectando la Palabra Visa
def payment(pago)
  if pago.include? "Visa"
  "Credit Card has been Charged"
  else
  "We only accept visa credit card"
  end
end

pay = "Welcome, your Visa Credit Card has been processed"
p payment(pay) == "Credit Card has been Charged"
p payment("American Express") == "We only accept visa credit card"

# Saludar un Usuario Mayor de Edad
name = "Hector"
age = 25

if name == "Hector" && age >= 18
 p "Welcome"
else
 p "No eres mayor de edad"
end 



# Métodos Destructivos
first_name = "Rogelio"
first_name.upcase!
last_name = "manzano"
last_name.capitalize!
mensaje = "Nombre Correcto"
mensaje.downcase!

p mensaje if first_name == "ROGELIO" && last_name == "Manzano"  



# Número De Entradas
def user
  text = ""
  count = 0
  while text != "Ya"
    puts "Ingrese otra cosa"
    text = gets.chomp
    count += 1
  end
  "Número de entradas del usuario: #{count - 1}"
end

p user 



# String Más Corto En Una Lista
def shortest(list)
  num_minor = list[1]
  number = []
  list.each do |num|
    if num.length <= num_minor.length
      num_minor = num
      number << num
    end
  end
  number
end

p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"] 



# String Más Largo En Una Lista
def longest(list)
  num_major = list[3]
  number = []
  list.each do |num|
    if num.length >= num_major.length
      num_major = num
      number << num
    end
  end
  p number
end

p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"] 



# Vocales
def vowels (valor)
valor.count('aeiouAEIOU')
end

p vowels("hello") == 2
p vowels("Magic") == 2
p vowels("Apologize") == 5 



# Reemplazar vocales
def replace_vowels (vocal)
  resp = []
  vocal.each do |pa|
    resp << pa.gsub(/[aeiou]/, 'x') 
  end
resp
end

p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"] 