# Calcular La Mediana De Una Lista De Números
def median (med)
  sorted = med.sort
  len = sorted.length
  ((sorted[(len - 1)/2] + sorted[len/2]).to_f) /2 
end  
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8 



# Calcular La Moda De Una Lista De Números
def mode (array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end
  mode_array = []
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  mode_array.sort
end

p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]  



# Número Más Grande De Una Lista
def max(array)
  num_major = array[0]
  array.each do |num|
    if num >= num_major
      num_major = num
    end
  end
  num_major
end

p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5



# Número Más Pequeño De Una Lista
def min(array)
  num_minor = array[0]
  array.each do |num|
    if num <= num_minor
      num_minor = num
    end
  end
  num_minor
end

p min([-20, -10, 0, 10, 20]) == -20
p min([1, 2, 3, 4, 5]) == 1
p min([5, 4, 3, 2, 1]) == 1



# Miembros De La Familia
def family_members family
  array = family[:sisters] + family[:brothers]
end

family = {  uncles: ["jorge", "samuel", "steve"],
            sisters: ["angelica", "mago", "julia"],
            brothers: ["polo","rob","david"],
            aunts: ["maria","minerva","susana"]
          }

p family_members(family) == ["angelica", "mago", "julia", "polo", "rob", "david"]



# Anagrams
def anagrams a
  a.group_by {|element|element.downcase.chars.sort}.values
end
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live','fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']

p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]



#test
p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"



# Values De Un Hash
def valores color
  array = []
  color.each_value {|valor| array << valor}
  array
end
color = {
  "verde" => 10,
  "azul" => 6,
  "rojo" => 9,
  "amarillo" => 15
}

p valores(color) == [10, 6, 9, 15]



#Keys De Un Hash
def valores color
  array = []
  color.each_key {|valor| array << valor}
  array
end
color = {
  "verde" => 10,
  "azul" => 6,
  "rojo" => 9,
  "amarillo" => 15
}

p valores(color) == ["verde", "azul", "rojo", "amarillo"]



# Keys Y Values De Un Hash
def valores color
  
  color.each {|llave, valor| p "La llave del Hash es #{llave} y su valor es #{valor} "}
  
end

color = {
  "verde" => 10,
  "azul" => 6,
  "rojo" => 9,
  "amarillo" => 15
}

valores(color)
# 
# Keys Y Values De Un Hash (con prueba)
def valores color
  col = ""
  color.each {|llave, valor| col = "La llave del Hash es #{llave} y su valor es #{valor} "}
  p col
end

color = {
  "verde" => 10
}

p valores(color) == "La llave del Hash es verde y su valor es 10 "