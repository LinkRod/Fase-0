
# def shuffle(array)
#   index = (0..array.size-1).to_a
#   array_new = []
#   while array_new.size!= array.size
#     x = rand(0..array.size-1)
#     if index.include?(x)
#       array_new << array[x]
#       index.delete(x)
#     end
#   end
# end

# # Driver code:
# array = (1..15).to_a

# # Esto no deberá arrojar una excepción
# 10.times do |variable|
#     raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
# end
# p true





# require'benchmark'
# iterations = 1_000
# arre=(0...1000000).to_a

# def linear_search(num,array)
#   find = false
#   index = 0
#   while !find && index < array.size
#     find = array[index] == num
#     index += 1
#   end
#     find
# end

# def find(num, arre)
#   if arre.size==1
#     return arre[0]==num
#   else
#     if num<arre[arre.count/2]
#       find(num,arre[0..arre.count/2-1])
#     else
#       find(num,arre[arre.count/2..arre.count-1])
#     end
#   end
# end
# for i in 1..5
#   rn=rand(0..1500000)
#   print "====================Iteracion: #{i}====Numero #{rn}=================\n"
  
#   Benchmark.bm do |bm|
#       bm.report do
#         print "==========Binario\n"
#         iterations.times do
#           find(rn,arre)
#         end
#       end
#       bm.report do
#         print "==========Lineal\n"
#         iterations.times do
#           linear_search(rn,arre)
#         end  
#       end
#   end
# end






# def drawBoard
#         @board = Hash.new   
#         ('a'..'h').each do |letter|
#             (1..8).each do |i|
#                 @board["#{letter}#{i}"] = "[]"
#                 print @board["#{letter}#{i}"]
#             end
#             puts
#         end
# end

# p board
# drawBoard







# class LayingHen
#   attr_reader :age

#   def initialize
#     @age = 0
#     @eggs = []
#   end

#   # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
#   def age!
#     @age += 1
#     if @age > 3
#     4.times do @eggs << Egg.new
#     end
#     end
#   end

#   # Returns +true+ if the hen has laid any eggs, +false+ otherwise
#   def any_eggs?
#     !@eggs.empty?
#   end

#   # Returns an Egg if there are any
#   # Raises a NoEggsError otherwise
#   def pick_an_egg!
#     raise NoEggsError, "The hen has not layed any eggs" unless self.any_eggs?
#     @eggs.shift
#     # egg-picking logic goes here
#   end

#   # Returns +true+ if the hen can't laid eggs anymore because of its age, +false+ otherwise.
#   # The max age for a hen to lay eggs is 10 
#   def old?
#     @age > 10
#   end

#   def increase_hatched_hour(hours)
#     @eggs.each{|x| x.hatched_hours = hours}
#   end
# end

# class Egg
#   attr_accessor :hatched_hours
#   # Initializes a new Egg with hatched hours +hatched_hours+
#   def initialize
#     @hatched_hours = 0
#   end

#   # Return +true+ if hatched hours is greater than 3, +false+ otherwise
#   def rotten?
#     @hatched_hours > 3
#   end
# end


# hen = LayingHen.new
# basket = []
# rotten_eggs = 0

# hen.age! until hen.any_eggs?

# puts "Hen is #{hen.age} months old, its starting to laid eggs."
# puts ""

# until hen.old?

#   # The time we take to pick up the eggs
#   hours = rand(5)
#   hen.increase_hatched_hour(hours)

#   while hen.any_eggs?
#     egg = hen.pick_an_egg!

#     if egg.rotten?
#       rotten_eggs += 1
#     else
#       basket << egg
#     end
#   end

#   puts "Month #{hen.age} Report"
#   puts "We took #{hours} hour(s) to pick the eggs"
#   puts "Eggs in the basket: #{basket.size}"
#   puts "Rotten eggs: #{rotten_eggs}"
#   puts ""

#   # Age the hen another month
#   hen.age!
# end

# puts "The hen is old, she can't laid more eggs!"
# puts "The hen laid #{basket.size + rotten_eggs} eggs"
# if rotten_eggs == 0
#   puts "CONGRATULATIONS NO ROTTEN EGGS" 
# else
#   puts "We pick to late #{rotten_eggs} eggs so they become rotten"
# end



require 'faker'
require 'Time'
require 'csv'
require 'date'


class Person
  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
  def to_a
    [@first_name, @last_name, @email, @phone, @created_at]
  end
end

def crea_personas(num)
  arre = []
  for i in 1..num
    arre << Person.new(Faker::Name.first_name,Faker::Name.last_name,Faker::Internet.email,Faker::PhoneNumber.cell_phone, Time.now)
  end
  arre
end

people=crea_personas(10)

class PersonWriter
  attr_accessor :file, :people

  def initialize(txt,arre)
    @file=txt
    @people=arre
  end

  def create_csv
    @people.each do |this|
      CSV.open(@file, "a+") do |csv|
        csv << this.to_a
      end
    end
  end
end

class PersonParser
  def initialize(txt)
    @file = txt
  end
  def people
    arre =[]
     CSV.foreach(@file) do |row|
      arre<<Person.new(row[0],row[1],row[2],row[3],row[4])
     end
     arre
  end
end




person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

#p CSV.read("people.csv")

parser = PersonParser.new('people.csv')
people2 = parser.people

for i in 0..9
  p people2[i].to_a
end



