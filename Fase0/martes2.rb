# Ruby: Object Oriented Programming Basics 1
#-Crear una clase
class Cat
end

class Dug
end

class Dog
end

class Dolphin
end

#-Creando un Objeto en Ruby
class Cat
end

patas = Cat.new
cola = Cat.new
pelo = Cat.new


class Car
end

llantas = Car.new
puertas = Car.new
parabrisas = Car.new


class Window
end

vidrio = Window.new
transparente = Window.new
fragil = Window.new


class Water
end

incolora = Water.new
inodora = Water.new
insipida = Water.new


class Fruit
end

pera = Fruit.new
durazno = Fruit.new
maracuya = Fruit.new


class Vegetable
end

zanahoria = Vegetable.new
lechuga = Vegetable.new
rabano = Vegetable.new

class Person
end

manos = Person.new
pies = Person.new
estomago = Person.new



# Ruby: Object Oriented Programming Basics 2

# Corregir El Código De La Clase Dog
class Dog
  def initialize(name)
    @name = name
  end

  def show_name
    @name
  end

  def bark
    "GUA Gua GUA"
  end
end

dog1 = Dog.new("Rocky")
dog2 = Dog.new("name")

p dog1.show_name
p dog1.bark == "GUA Gua GUA"
p dog2.bark == "GUA Gua GUA"



# Clase Cat
class Cat
  def initialize(name)
    @name = name
    @run = 0
  end

  def show_name
    @name
  end

  def self.meow
    "Miau... Miau..."
  end

  def run(*a)
    if a.length == 0
    "Corriendo 0 mts..."
    else
      @run += a[0]
    "Corriendo #{@run} mts..."
    end
  end

  def jump
    "Saltando..."
  end

end

cat_1 = Cat.new("name")
cat_2 = Cat.new("name")
cat_3 = Cat.new("catty")
cat_4 = Cat.new("name")
cat_5 = Cat.new("name")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."



# Clase People
class People
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} is talking to you..."
  end

end

people_1 = People.new("Rodrigo")
people_2 = People.new("Carlos")
people_3 = People.new("Rodrigo")

p people_1.speak == "Rodrigo is talking to you..."
p people_2.speak == "Carlos is talking to you..."
p people_3.speak == "Rodrigo is talking to you..."



# Clase Waka Waka




# Adivina El Número
