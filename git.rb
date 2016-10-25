# def replace_vowels (vocal)
#   resp = []
#   vocal.each do |pa|
#     resp << pa.gsub(/[aeiou]/, 'x') 
#   end
# resp
# end

# p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]






# Media

# También llamada Average, es un valor utilizado en estadistica para determinar el valor característico de una serie de datos, partiendo del principio de valor esperado, se obtiene a partir de la suma de todos sus valores dividida entre el número de sumandos.

# def media(array)
#  array.inject{ |sum, x| sum += x } / array.size.to_f
# end

# Calculamos algunos valores:

# media([1,2,3,4])  #=> 2.5
# media([-65,552,300,4]) #=> 197.75
# irb(main):013:0> mean([1,2,3,3,3,1]) #=> 2.16666666666667
# irb(main):014:0> mean([1,2,3,3,3,2]) #=> 2.33333333333333
 

# Mediana

# Representa el valor de la variable de posición central en un conjunto de datos ordenados. Si tenemos un conjunto impar de valores ordenados la mediana será el valor en la posición central de dicho conjunto. Si los datos contienen valores ordenados pares, la mediana se determina como la media de los 2 valores ubicados en el centro del conjunto.


# def mediana(array, already_sorted=false)
#   return nil if array.empty?
#   array = array.sort unless already_sorted
#   m_pos = array.size / 2
#   return array.size % 2 == 1 ? array[m_pos] : mean(array[m_pos-1..m_pos])
# end

# Probamos el método con algunos conjuntos:

# mediana([1,2,3,4,5]) #=> 3
# mediana([5,4,6,7,8]) #=> 6
# mediana([5,3,2,1,4]) #=> 3
# mediana([1,1,2,3,4]) #=> 2
# mediana([1,1,10,100,1000]) #=> 10
 


 
 

# Moda

# El el elemento o valor en un conjunto de datos el cual se repite con mayor frecuencia.

# def moda(array, find_all=true)
#   histogram = array.inject(Hash.new(0)) { |h, n| h[n] += 1; h }
#   modes = nil
#   histogram.each_pair do |item, times|
#     modes << item if modes && times == modes[0] and find_all
#     modes = [times, item] if (!modes && times>1) or (modes && times>modes[0])
#   end
#   return modes ? modes[1..modes.size] : modes
# end
# Probamos el método

# moda([1,2,3,4]) # => nil
# moda([1,1,2,3,4]) # => [1]
# modes([1,1,2,2,3,4])  #=> [1, 2]
 


# Desviación Estandard

# Por último la desviación estandard es una medida de centralización que nos especifica que tan dispersos o cercanos se encuentran los valores uno de otro en un conjunto de datos.


# def media_desviacion(array)
#  m = media(array)
#  variance = array.inject(0) { |variance, x| variance += (x - m) ** 2 }
#  return m, Math.sqrt(variance/(array.size-1))
# end
# Probamos este útlimo método

# media_desviacion([1,2,3,1,1,2,1]) #=> [1.57142857142857, 0.786795792469443]