#Refactoring Overriding
class SuperSay
end

class HtmlSay 
  def say(text)
    "<p>" + text + "</p>"
  end
end

class CssSay 
  def say(text)
    text
  end

end

doc = HtmlSay.new
style = CssSay.new

p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"



# Refactoring Super
class A
  def b(a)
    'A.b'
  end
end

class B < A
  def b(a)
    if a == 5
      'B.b'
    else
      super
    end
  end
end

b = B.new


p b.b(5) == "B.b"
p b.b(10) == "A.b"



# Función Factorial
def factorial(num)
  (1..num).reduce(:*) || 1
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720



# Serie De Fibonacci
def fibonacci(n)
  n <= 2 ? 1 : fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55



# Número De Dudeney
def dudeney_number?(num)
  dudeneynumbers = [0,1,512,4913,5832,17576,19683]
  dudeneynumbers.include?(num)
end

p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true 



# Primera Letra De Cada Palabra
def first_letters(string)
  array = []
  resp = string.split.map(&:chr).join
  array << resp
  array.to_s.scan /\w/
end

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]



# Código Bacon
def baconian_cipher(string)
  resp = ""
  string.scan(/.{1,5}/m).each {|x|
    if x == "AAAAA" then resp << "a"
    elsif x == "AAAAB" then resp << "b"
    elsif x == "AAABA" then resp << "c"
    elsif x == "AAABB" then resp << "d"
    elsif x == "AABAA" then resp << "e"
    elsif x == "AABAB" then resp << "f"
    elsif x == "AABBA" then resp << "g"
    elsif x == "AABBB" then resp << "h"
    elsif x == "ABAAA" then resp << "i"
    elsif x == "ABAAB" then resp << "k"
    elsif x == "ABABA" then resp << "l"
    elsif x == "ABABB" then resp << "m"
    elsif x == "ABBAA" then resp << "n"  
    elsif x == "ABBAB" then resp << "o"
    elsif x == "ABBBA" then resp << "p"
    elsif x == "ABBBB" then resp << "q"
    elsif x == "BAAAA" then resp << "r"
    elsif x == "BAAAB" then resp << "s"
    elsif x == "BAABA" then resp << "t"
    elsif x == "BAABB" then resp << "v"
    elsif x == "BABAA" then resp << "w"
    elsif x == "BABAB" then resp << "x"
    elsif x == "BABBA" then resp << "y"
    elsif x == "BABBA" then resp << "z"
    end
  }
  resp
end

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"



# Módulo Enumerable
# Strings en índices nones de un arreglo
def odd_indexed(array)
  array.select.with_index {|_, i| i.even?}
end
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]

# Strings de tamaño mayor a 5
def long_strings(array)
  arr = []
  array.each {|y| if y.length > 4 then arr << y
end
}
arr
end
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

# Primer string que empieza con 'h'
def start_with_h(array)
  resp = ""
  array.each {|y| if y[0] == "h" then resp << y
    end}
  resp
end
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

# Que todos los strings empiecen con mayúscula
def capitalize_array(array)
  array.map(&:capitalize)
end
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

# Agrupar strings por su primera letra
def group_by_starting_letter(hash)
  resp = {}
  hash.each {|y| resp[y[0]] = resp.fetch(y[0], []) + [y]}
  resp
end
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

# Contar el número de 'r' en un string
def number_of_r(array)
 array.count "r"
end
p number_of_r("ferrocarril") == 4


### El mismo ejercicio pero sin each ###
def odd_indexed(array)
  array.select.with_index {|_, i| i.even?}
end

# Strings de tamaño mayor a 5
def long_strings(array)
  arr = []
  array.find_all {|x| x.length > 4}
end

# Primer string que empieza con 'h'
def start_with_h(array)
  array.detect {|x| x.chars.first == "h"}
end

# Que todos los strings empiecen con mayúscula
def capitalize_array(array)
  array.map(&:capitalize)
end

# Agrupar strings por su primera letra
def group_by_starting_letter(hash)
  hash.group_by {|x| x.chars.first if x.chars.first == x.chars.first}
end

# Contar el número de 'r' en un string
def number_of_r(array)
 array.count "r"
end


# Pruebas
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4