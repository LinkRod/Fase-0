gato = [ ["X", "X", "O"],
         ["O", "X", "O"],
         ["O", "O", "X"] ]

def cat
 arr = Array.new(3) {Array.new(3)}
 y = ["X", "O"]
 val = y.sample
 for i in 0..2
  for j in 0..2
    arr[i][j] = val
    val = next_y(val)
  end
  p arr[i].shuffle!
end
  arr.shuffle!
end

def next_y(string)
  string == "O" ? "X" : "O"
end

cat


# Convertir nested arrays en hashes
table = [["Nombre", "Edad", "Genero","Grupo", "Calificaciones"],
        ["Rodrigo Garcia", 13, "Masculino", "Primero",[9,9,7,6,8]],
        ["Fernanda Gonzalez", 12, "Femenino", "Tercero",[6,9,8,6,8]],
        ["Luis Perez", 13, "Masculino", "Primero",[8,7,7,9,8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo",[9,9,6,8,8]],
        ["Pablo Moran", 11, "Masculino", "Segundo",[7,8,9,9,8]]]

tab1 = []
for j in 1..5
  tab2 = []
  for i in 0..4
    tab2 << [table[0][i],table[j][i]]
  end
  tab1 << Hash[tab2]
end

p tab1