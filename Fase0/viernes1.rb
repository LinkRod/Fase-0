# Refactoring
# Etapas del desarrollo humano
def get_age (age)
  case age
  when 0..6 then "Infancia"
  when 6..12 then "Niñez"
  when 12..20 then "Adolescencia"
  when 20..25 then "Juventud"
  when 25..60 then "Adultez"
  else "Ancianidad"
  end
end

p get_age(25) == "Juventud"
p get_age(4) == "Infancia"
p get_age(68) == "Ancianidad"



# Refactoring Woow
def age(num)
num > 10 ? "Woow... You are #{num} years old" : nil
end

#test
p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old"

# Posible respuesta => Refactoring Woow
def age(num)
 "Woow... You are #{num} years old" unless num < 10 
end

p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old" 



# Refactoring Unless
def swim(time)
  "#{time} seconds... New Record for 50 meters" unless time > 10
end

p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"

#test
p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"



# Refactoring Greater Than
def greater_than(a, b)
  a > b ? "#{a} is greater than #{b}" : "#{b} is greater than #{a}"
end

#test
p greater_than(56, 70) == "70 is greater than 56"
p greater_than(56, 58) == "58 is greater than 56"
p greater_than(15, 20) == "20 is greater than 15"



# Refactoring Temperature
def temperature(grade)
  case grade
  when 0..5 then "Temperature is between 0 and 5"
  when 6..10 then "Temperature is between 6 and 10"
  when 11..15 then "Temperature is between 11 and 15"
  when 16..20 then "Temperature is between 16 and 20"
  when 21..25 then "Temperature is between 21 and 25"
  when 26..30 then "Temperature is between 26 and 30"
  when 31..35 then "Temperature is between 31 and 35"
  when 36..40 then "Temperature is between 36 and 40"
  else "Temperature is greater than 40"
  end
end

#test
p temperature(23) == "Temperature is between 21 and 25"
p temperature(45) == "Temperature is greater than 40"
p temperature(34) == "Temperature is between 31 and 35"



# Refactoring Language
def language(speak)
  case speak
  when "JavaScript" then "I like JavaScript"
  when "CSS" then "I like CSS"
  when "Python" then "I like Python"
  when "R" then "I like R"
  when "C++" then "I like C++"
  when "Unity" then "I like Unity"
  when "Ruby" then "I like Ruby"
  when "Ruby on Rails" then "I like Ruby on Rails"
  when "Java" then "I like Java"
  else "I don't like to code"
  end 
end

#test
p language("JavaScript") == "I like JavaScript"
p language("Unity") == "I like Unity"
p language("Swin") == "I don't like to code"



# Refactoring Shopping
def shopping(list)
  basket_shopping ||= list.join(", ")
end

p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"



# Refactoring Bye
def bye(numbers)
  numbers.map! {|number| (number < 10) ? "Smaller" : number}
end

p bye([2, 4, 6, 10, 20, 40, 76]) == ["Smaller", "Smaller", "Smaller", 10, 20, 40, 76]



# Refactoring Char
def char
  [*"A".."K"].to_a.join(", ")
end

# test
p char == "A, B, C, D, E, F, G, H, I, J, K"



# Refactoring Option
def option(if_this_is_a_true_value, then_the_result_is_this, else_it_is_this)
  if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
end

#test
p option(1, 2, 3) + 2 == 4
p option(false, 6, 7) + 3 == 10 



# Refactoring Methods 2
def validate (array)
  ([1, 3, 5].respond_to?(:to_sym)) ? true : false
end

p validate([1, 3, 5]) == false



# Refactoring Methods 1
def check?
(true || false == false && false) ? "true" : "false"
end

p check? == "true"