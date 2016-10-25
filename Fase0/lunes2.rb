# Identificar Año Bisiesto
def leap_year?(año)
   if (año % 4 == 0)
      if (año % 100 == 0)
         if(año % 400 == 0)
            return true
         end
         return false
      end
      return true
   end
   return false
end

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true

# Otra forma de hacerlo
#year_var = <your Year>
#if((year_var % 4 == 0 &&) !(year_var % 100 == 0) || (year_var % 400 == 0))
    #Do anything
#end



# Número De Personas En Un Rango De Edad
def total_between_age (array, min_age, max_age)
  count = 0
  array.each do |x|
  if (x >= min_age) && (x <= max_age)
  count += 1 
  end
  end
count
end

p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4



# Tipo de prisma
def prism_type(a, b, c)
   if (a == b) && (b == c) then "cubo"
   elsif ((a == b) && (a != c)) || ((a == c) && (a != b)) || ((b == c) && (a != b)) then "prisma rectangular"
   elsif (a != b) && (a != c) then "cuboide"
   else "Ninguno de los anteriores"
   end
end

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"



# Compras Dentro Del Presupuesto
def total_shopping_budget(array, com_min, com_max)
  count = 0
  array.each do |x|
  if (x >= com_min) && (x <= com_max)
  count += 1 
  end
  end
count
end

p total_shopping_budget([10.50, 20.20, 30.10, 40.56, 50.13, 60.45], 20, 30) == 1
p total_shopping_budget([18.30, 19.12, 20.21, 23.56, 24.78, 27.32], 20, 27) == 3



# Tipo de Triángulo
def triangle_type(a, b, c)
   if (a == b) && (b == c) then "Equilatero"
   elsif ((a == b) && (a != c)) || ((a == c) && (a != b)) || ((b == c) && (a != b)) then "Isósceles"
   elsif (a != b) && (a != c) then "Escaleno"
   else "Ninguno de los anteriores"
   end
end

p triangle_type(7, 7, 7) == "Equilatero"
p triangle_type(8, 8, 4) == "Isósceles"
p triangle_type(6, 4, 3) == "Escaleno"
p triangle_type(15, 7, 4) == "Escaleno"



# Block & Collect
def numbers(list)
  list.collect do |num|
    num * 2 /2
  end
end

#test
list = [35, 44, 78, 34, 56]
p numbers(list) == [35, 44, 78, 34, 56]



# Block & Prime
require "prime"
def prime(a)
  yield
end

p prime(10) {Prime.first(10)}



# Block & Yield
def average_grade
  yield
end

def average_grade(grades)
  starttime = Time.now
  totalavg = grades.inject{ |sum, elem| sum + elem }.to_f / grades.size 
  endtime = Time.now
  valor = endtime - starttime
  valor = valor * 9
p "------------Benchmak started----------"
p "Start time: #{starttime}"
p "Average is: #{totalavg}"
p "End time: 2016-06-17 20:14:46 -0500"
p "-------------Benchmak finished--------"
"Result: #{valor}"
end

grades = [23, 40, 52]
p average_grade(grades)



# Proc Even
even = Proc.new {|numbers| numbers = 
  if numbers%2 == 0
      then "Even"
  else numbers
end}

numbers = [2, 4, 7, 10, 23, 34, 45, 42]
p numbers.map(&even) == ["Even", "Even", 7, "Even", 23, "Even", 45, "Even"]



# Lambda Length
char_length = lambda { |palabras| palabras.length > 4 ? palabras : nil}

strings = ["ruby", "java", "c++", "javascript"]
p strings.select(&char_length).join(", ") == "javascript"
