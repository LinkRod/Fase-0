# Extraer Comportamientos De Clases
class Animal
def speak
  "Hello!"
end
end

class Dog < Animal
end

class Cat < Animal
end

drako = Dog.new
peto = Cat.new
p drako.speak == "Hello!"          
# => true
p peto.speak == "Hello!"           
# => true



# Overriding
class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal 
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} say Guau!"
  end
end

class Cat < Animal
end

drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"         
# => true
p peto.speak == "Hello!"           
# => true



# Super Super Super
class People
  attr_accessor :name
 def initialize(x)
    @name = x
  end

end
class Man < People
  attr_reader :color
  def initialize(x)
    @color = x
    super
  end
end

class Woman < People
end

#test
man = Man.new("brown")
woman = Woman.new("leyla")
p man.name == "brown"
#=>true
p man.color == "brown"
#=>true
#p man.color = "red"
#=>...undefined method `color='... 
p woman.name == "leyla"
#=>true
woman.name = "Karla"
p woman.name == "Karla"
#=>true
#p woman.color == "leyla"
#=>...undefined method `color'... 



# Herencia
class Animal
  def breath
    "Breathe oxygen"
  end
end

class Reptile < Animal
  def has_scales?
    "Yes"
  end
end

class Mammal < Animal
  def warm_blooded?
    "Yes"
  end
end

class Fish < Animal
  def swim
    "Yes"
  end
end

class Bird < Animal
  def can_fly?
    "Yes"
  end
end

class Dog < Mammal
end

class Turtle < Reptile
end

class Macaw < Bird
end

class Dolphin < Mammal
end

class Cat < Mammal
end

class Whale < Mammal
end

class Snake < Reptile
end

dogd = Dog.new
turtlet = Turtle.new
macawm = Macaw.new
dolphind = Dolphin.new
catc = Cat.new
birdb = Bird.new
whalew = Whale.new
snakes = Snake.new

p dogd.warm_blooded? == "Yes"
p turtlet.has_scales? == "Yes"
p macawm.can_fly? == "Yes"
p dolphind.breath == "Breathe oxygen"
p catc.warm_blooded? == "Yes"
p birdb.breath == "Breathe oxygen"
p whalew.warm_blooded? == "Yes"
p snakes.has_scales? == "Yes"



# Variables De Clase
class Vehicle
  @@number_of_vehicles = 0
  def initialize
    @@number_of_vehicles += 1
    
  end
  def self.number_of_vehicles
    "This Superclass has created #{@@number_of_vehicles} vehicles"
  end

end

class Car < Vehicle
end

class Bus < Vehicle
end

#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new

p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true



# Clase Actor
class Actor
   attr_accessor :name, :birth_date

   def initialize(name, birth_date)
     @name = name
     @birth_date = birth_date
   end

   def age
      if alive? ? a = Time.now - Time.parse(birth_date) : a = Time.parse(death_date) - Time.parse(birth_date)
      end

      (a / 60 / 60 / 24 / 365).to_i
   end

   def alive?
     true
   end

   def to_s
    "My birth_date is '#{@birth_date}', my name is #{@name}."
  end
end

class Bill < Actor
  NUM_OF_CARS = 5
end

class Enry < Actor
  NUM_OF_YACTH = 10
end


an_actor = Actor.new("Mike", "1/26/1926")
an_actor.alive?
an_actor.name = "Paul Newman"
an_actor.birth_date = "1/26/1925"

billy = Bill.new("Billy", "1/23/1926")
enry = Enry.new("Enry", "11/01/1989")
puts billy
#=> My birth_date is '1/23/1926' and my name is Billy.
puts enry
#=> My birth_date is '11/01/1989' and my name is Enry.



# ¿Es mayor que?
class Cat
  CAT_YEARS = 7

  def initialize(age)
    @age = age
  end

  def es_mayor_que?(name)
    @name = name
    es_mayor_que_cual?
  end

  private
  def es_mayor_que_cual?
    if @age > @name.age then true else false
    end
  end

  protected
  def age
  @age
  end

end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false



# Edad de una persona
class Person
  def initialize(age,name)
    @age = age
    @name = name
  end

  def age
    "#{@name} is #{@age} years old."
  end

#   private
#   def years_ols
#   end
end

carlos = Person.new(30,"Carlos")
martha = Person.new(26,"Martha")


p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)



# Clase Stair
class Stair
  def initialize(material,size)
    @material = material
    @size = size
  end

  def larger_size_than?(escalera)
    if size > escalera.size then true else false
  end
end

protected
def size
  @size
end
end


metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
p "Well done!" if metal.larger_size_than?(wood)



# Analizando El Error
class Asignature
  def math
    "Mathematics"
  end
end

asignature = Asignature.new
p asignature.math == "Mathematics"