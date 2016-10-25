# nuevo_hash= {}
# catalogo_tienda = {
#   "camisa" => 5,
#   "playera" => 3,
#   "short" =>7,
#   "pantalon" => 2
# }

# p catalogo_tienda["camisa"]
# catalogo_tienda["calcetines"] = 3
# p fruta_seleccionada = prendas["short"]
# p catalogo_tienda




# def array_index (valor,factor)
#     array = []
#     ar = []
#     factor.times do |n|
#         ar << n+1
#     end
#     valor.each do |letra|
#         array << [letra, ar]
#     end
#     array
# end

# p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
# p array_index(["a"], 3) == [["a", [1, 2, 3]]]

 

# def get_index (elementos)
#   array = []
#   elementos.each_with_index {|valor,indice| array << [valor,indice]}
#   array
# end

# p get_index([2, 10, 6, 34, 0, 3]) == [[2, 0], [10, 1], [6, 2], [34, 3], [0, 4], [3, 5]]


# def hello
#   yield 10
#   puts "Hello... You're in the method"
#   yield 20
# end

# hello {|number| puts "You are in the block #{number}"}


# class People
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     "#{@name} is talking to you..."
#   end

# end

# people_1 = People.new("Rodrigo")
# people_2 = People.new("Carlos")
# people_3 = People.new("Rodrigo")

# p people_1.speak == "Rodrigo is talking to you..."
# p people_2.speak == "Carlos is talking to you..."
# p people_3.speak == "Rodrigo is talking to you..."



#  def deaf_grandma
#   text = ""
#   count = 0
#   if text = gets.chomp
#     "HUH?! NO TE ESCUCHO, HIJO!"
#   elsif text = gets.upcase.chomp
#     "NO, NO DESDE 1983"
#     text = gets.chomp
#   elsif text == "BYE TQM"
#     count += 1

# end
# end

# p deaf_grandma



class PERSON
LIFE_stage = {childhood:12,teenager:19,adult:50}
LEGAL_AGE = 18
attr_accessor :name

    def initialize(name,age) 
      @name = name
      @age = age
    end

    def age
      @age
    end

    def life_stage
      case
        when @age < LIFE_stage[:childhood]
          :childhood
        when @age < LIFE_stage[:teenager]
          :teenager
        when @age < LIFE_stage[:adult]
          :adult
        else
          :elder
      end
    end

      def legal
 @age >= LEGAL_AGE
    end
end


# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)

puts fernando.legal == false
puts juan.legal == true
puts laura.legal == true
puts andrea.legal == false

puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"




# puts  "Abuela: Hola, hijito."
# print "Tú: "
# resp  = gets.chomp
# adios = 0

#   adios = adios + 1 
# end

# while adios < 3
#   if resp == resp.upcase
#     puts "Abuela: ¡NO, NO DESDE " + (rand(21) + 1930).to_s + "!"
#   else
#     puts "Abuela: ¿¡QUÉ!? ¡HABLA MÁS FUERTE HIJITO!"
#   end

#   print "Tú: "
#   resp = gets.chomp

#   if resp == "ADIÓS"
#     adios = adios + 1
#   else
#     adios = 0 
#   end

# end

# puts  "Abuela: Hasta luego, hijito."



