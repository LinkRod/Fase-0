def factorial_iterative(num)
  fact = 1
  if num != 0
    for i in 1..num
      fact*= i
    end
  end
  fact
end

def factorial_recursive(num)
  if num == 0
    1
  else
    num*factorial_recursive(num-1)
  end
end

 p factorial_iterative(9)
 p factorial_recursive(6)