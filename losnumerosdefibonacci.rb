require 'benchmark'

def fibonacci_iterative(n)
 if n>2
    aux1=1
    aux2=1
    for i in 1..n-2
      n=aux1+aux2
      aux2=aux1
      aux1=n
      end 
  elsif n>0
    n=1
  end
  n
end

def fibonacci_recursive(n)
  return 0 if n == 0
  n <= 2 ? 1 : fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end
 
# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5

puts "Benchmark iterative"
puts Benchmark.measure {fibonacci_iterative(0)*1000000000}
puts Benchmark.measure {fibonacci_iterative(1)*1000000000}
puts Benchmark.measure {fibonacci_iterative(2)*1000000000}
puts Benchmark.measure {fibonacci_iterative(3)*1000000000}
puts Benchmark.measure {fibonacci_iterative(4)*1000000000}
puts Benchmark.measure {fibonacci_iterative(5)*1000000000}
puts Benchmark.measure {fibonacci_iterative(99)*1000000000}

puts "Benchmark recursive"
puts Benchmark.measure {fibonacci_recursive(0)*1000000000}
puts Benchmark.measure {fibonacci_recursive(1)*1000000000}
puts Benchmark.measure {fibonacci_recursive(2)*1000000000}
puts Benchmark.measure {fibonacci_recursive(3)*1000000000}
puts Benchmark.measure {fibonacci_recursive(4)*1000000000}
puts Benchmark.measure {fibonacci_recursive(5)*1000000000}
puts Benchmark.measure {fibonacci_recursive(99)*1000000000}