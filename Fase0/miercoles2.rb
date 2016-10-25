# Corregir El Código De La Clase Window 1
class Window
  attr_reader :color
  attr_writer :size

  def initialize(color,size)
    @color = color
    @size = size
  end

  def open
    "open #{@color} window"
  end

  def close
    "close window of #{@size} meters"
  end
end

window_1 = Window.new("green", 5)

#test
p window_1.color == "green"
p window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"



# Corregir El Código De La Clase Window 2
class Window

  def initialize(color,size)
    @color = color
    @size = size
  end

  def color
    @color
  end

  def size= x 
    @size = x
  end

  def open
    "open #{@color} window"
  end

  def close
    "close window of #{@size} meters"
  end
end


window_1 = Window.new("green", 5)

#test
p window_1.color == "green"
p window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"



# Clase Computer
class Computer
attr_accessor :color

  def initialize(color)
    @color = color
    end

end

mac = Computer.new("Dorado")
p mac.color
mac.color = "Platinum"
p mac.color

p mac.color == "Platinum"



# ¿Qué Procesador Tiene La Computadora?
class Computer
attr_reader :processor

  def initialize(processor)
    @processor = processor
    end

end

mac = Computer.new("Intel")
p mac.processor
# Aqui se trata de cambiar el nombre del procesador
mac.processor = "AMD"
# Y aqui al tratar de imprimir el cambio realizado, muestra el mensaje de error
p mac.processor



#Painting A Door
class Door
attr_accessor :pintura

  def initialize(pintura)
    @pintura = pintura
    end

  def spray_paint(new_colour)
    @pintura = new_colour
    "The #{@pintura.capitalize} door looks great!"
  end
end

big_door = Door.new("Verde")

p big_door.spray_paint('yellow') == "The Yellow door looks great!"



# Birthday
class Person
  attr_accessor :age

  def initialize(age)
    @@age = age
  end

  #no modificar este método de clase
  def self.birthday
    @@age += 1
  end

end

alice = Person.new(17)

alice.age = 17
p alice.age == 17
#=> true
alice.age
p Person.birthday == 18
#=> true



# Clase Persona
class Person
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def information
   p "Name: #{@first_name} #{@last_name}" 
   "E-mail: #{@email}"
  end

end

person = Person.new("Hector", "Rodriguez", "link@gmail.com")

p person.name
p person.information



# Clase Rectangulo
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
      (width * height)
  end

  def perimeter
      (width*2 + height*2)
  end

  def diagonal
      Math.sqrt(width * width + height * height)
  end

  def square?
      (width == height) ? true : false
  end

end

rectangle = Rectangle.new(20, 10)
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false

rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true