def diccionary
p "Escribe una palabra."
array = [] 
palabra = gets.chomp.capitalize

while palabra != ''
    array << palabra
    p "Escribe otra palabra(o presiona enter para finalizar): "
    palabra = gets.chomp.capitalize
  end
  p "Felicidades! Tu diccionario tiene #{array.size} palabras:"
p array.sort
end

diccionary