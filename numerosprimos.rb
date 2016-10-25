require 'prime'

def prime_factors(num)
  array = []
  arr = Prime.prime_division(num)
  arr.each do |(x,y)|
  for i in 1..y 
  array << x
  end
  end
  array
end

p prime_factors(4) #=> [2, 2]
p prime_factors(9) #=> [3, 3]
p prime_factors(12) #=> [2, 2, 3]
p prime_factors(34) #=> [2, 17]