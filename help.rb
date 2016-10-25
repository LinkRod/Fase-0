require "csv"
# CSV.open("prueba.csv", "wb") do |csv|
#   csv << ["animal", "count", "price"]
#   csv << ["fox", "1", "$90.00"]
#   csv << ["fox", "1", "$90.00"]
# end

CSV.open("prueba.csv", "a+") do |csv|
  csv << ["cow", "3","2500"]
end

CSV.foreach("prueba.csv") do |row|
  print "#{row}\n" #first row would be ["animal", "count", "price"] - etc.
end