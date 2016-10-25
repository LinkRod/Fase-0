# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
   string.upcase.reverse + "!!!"
end

# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
 array = fine_primes(array)
 array.map{|p| p*p}
end

def fine_primes(array)
array = array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0}
end

#Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
p shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
p squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]