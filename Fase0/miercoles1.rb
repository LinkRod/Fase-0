# Analizando Arrays
array = ["pegamento", 7, 18, [24, ["refresco", "sprite"]], 12, { "firstname" => "Mark", "lastname" => "Martin", "age" => "24", "gender" => "M" }]
p array.index(7)
 # 1
p array[5]["firstname"]
 # "Mark"
p array[3][1][1]
 # "sprite"



# Buscando Número En Lista
def numbers(array, num)
  array.include?(num)
end

p numbers([1, 3, 5, 7, 9, 11], 5) == true
p numbers([1, 50, 24, 7, 9, 100], 25) == false
p numbers([11, 33, 55, 77, 99, 11], 33) == true
p numbers([20, 43, 55, 77, 99, 40], 43) == true



# FizzBuzz
def fizzbuzz(min,max)

array = []
  for i in (min..max)

    if (i % 3 == 0 ) && (i % 5 == 0)
      array << 'FizzBuzz'
    elsif i % 3 == 0 
      array << 'Fizz'
    elsif i % 5 == 0 
      array << 'Buzz'
    else array << i
    end
  end
  array
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]



# Tablas De Multiplicar
def multiplication_tables(max)
  for x in (1..max)
    for y in (1..10)
       ecua = (x * y)
       print ecua.to_s + "\t"
    end
    puts 
  end
end

multiplication_tables(6)



# Promedio De Calificaciones
def average (ave)
ave.inject{ |sum, el| sum + el }.to_f / ave.size
end  

p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875




# Unir Arreglos
def join_arrays (a,b)
  a.push(*b)
end

p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']



# Definir Los Métodos Aritméticos Básicos
def add(a,b)
    suma = a + b 
    suma
end
    
def substract(a,b)
    resta = a - b
    resta
end

def multiply(a,b)
    multi = a * b
    multi
end

def divide(a,b)
    div = a / b.to_f
    div 
end

p add(10, 2) == 12
p substract(10, 2) == 8
p multiply(10, 2) == 20
p divide(10, 4) == 2.5



# Muestra La Década De Un Año
def decade(year)
  case year
  when 1900..1909 then "First years"
  when 1910..1919 then "Tenies"  
  when 1920..1929 then "Twenties"
  when 1930..1939 then "Thirties"
  when 1940..1949 then "Forties"
  when 1950..1959 then "Fifties"
  when 1960..1969 then "Sixties"
  when 1970..1979 then "Seventies"
  when 1980..1989 then "Eighties"
  when 1990..1999 then "Nineties" 
  else "No se encontró el año deseado"
  end
end

p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"