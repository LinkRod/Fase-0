board = [["TB","CB","AB","YB","RB","AB","CB","TB"],
          ["PB","PB","PB","PB","PB","PB","PB","PB"],
          ["  ","  ","  ","  ","  ","  ","  ","  "],
          ["  ","  ","  ","  ","  ","  ","  ","  "],
          ["  ","  ","  ","  ","  ","  ","  ","  "],
          ["  ","  ","  ","  ","  ","  ","  ","  "],
          ["PW","PW","PW","PW","PW","PW","PW","PW"],
          ["TW","CW","AW","YW","RW","AW","CW","TW"]]

def chessboard(board)
  array = []
  0.upto(7).each do |x|
    array << 0.upto(7).map{|y| board[x][y]}
  end
  array.each do |row_array|
    print "\n"
    row_array.each do |cell|
      print "[#{cell}]"
    end
  end
  print "\n"
end

chessboard(board)


# Tabla de datos
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

p table[0][4] == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6