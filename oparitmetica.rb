# Definir Variables y Constantes
puts title = "variables"
puts description = "variables para poder almacenar la información"
puts number_of_likes = 987
puts CONSTANT = 1
puts 
puts street = "Benito Juarez"
puts number = "465"
puts state = "Campeche"
puts city = "Tula"
puts zip = "04500"

# Operaciones Aritmeticas Basicas
num1 = 5
num2 = 9

puts sum = num1 + num2
puts difference = num1 - num2
puts product = num1 * num2
puts quotient = num1 / num2.to_f
puts moduls = num1 % num2

# Verdadero o Falso
igual_que = 50 == 50
igual_que = true

menor_que = 23 < 30
menor_que = true

mayor_que = 54 > 40
mayor_que = true

menor_o_igual_que = 45 <= 45
menor_o_igual_que = true

mayor_o_igual_que = 56 >= 45
mayor_o_igual_que = true

diferente_que = 34 != 34
diferente_que = false

# Operadores Logicos
valor_1 = (1 < 7 || false) && (true || true)
valor_1 = true

valor_2 = !false && (!false || 50 != 5**10)
valor_2 = true

valor_3 = false || !(true || true)
valor_3 = false

# Mensaje de Bienvenida
first_name = "Hector"
last_name = "Rodriguez"
gender = "H" 

puts 
puts "Welcome #{first_name}, your last name is #{last_name} and your gender is #{gender}"