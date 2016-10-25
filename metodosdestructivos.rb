def shout(palabra)
  palabra.upcase
end

def shout!(palabra)
  palabra.upcase!
end

a = "rojo"
p shout(a) == "ROJO"
p a == "rojo"

b = "verde"
p shout!(b) == "VERDE"
p b == "VERDE"