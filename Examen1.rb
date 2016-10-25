# Examen Final Fase 0
# Removiendo vocales
def vowels(words)
  resp = []
  words.each do |pa|
    resp << pa.gsub(/[aeiou]/, '') 
  end
resp
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]



# Suma de numeros
def get_sum(min, max)
  return max if min == max
  if min < max then (min + get_sum(min + 1, max))
  else (max + get_sum(max + 1, min))
  end
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2



# Palabras y caracteres
def char_word_counter(string)
  w = string.split.size
  ch = string.gsub!(/\s+/, '').size
  "This sentence has #{w} words & #{ch} characters"
end

p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"



# Buscando en hashes
def food_group(food)
food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
    }

  if food_groups.values[0].include?(food) == true then "gramo"
  elsif food_groups.values[1].include?(food) == true then "vegetal"
  elsif food_groups.values[2].include?(food) == true then "fruta"
  elsif food_groups.values[3].include?(food) == true then "carne"
  elsif food_groups.values[4].include?(food) == true then "lácteo"
  else "comida no encontrada"
  end
end


p food_group('Crema') == "lácteo"
p food_group('Res') == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"



# Dado
class Die
  def initialize(sides)
    @sides = sides
  end

  def die_roll
    rand(@sides) + 1
  end

  def roll(number = 1)
    roll_array = []
    number.times do
      roll_array << die_roll
    end
    total = 0
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end

six_sised_die = Die.new(6)
eight_sised_die = Die.new(8)
ten_sised_die = Die.new(10)
twenty_sised_die = Die.new(20)

p six_sised_die.roll


# Driving
class MyCar
  def initialize(year,color,model)
    @currentspeed ||=0
    @year = year
    @color = color
    @model = model
  end

def speed_up(arr)
  @currentspeed += arr
  "You push the gas and accelerate #{arr} kph."
end

def brake(ab)
  @currentspeed -= ab
  "You push the brake and decelerate #{ab} kph."
end

def current_speed
  "You are now going #{@currentspeed} kph."
end

def shut_down
  @currentspeed = 0
  "Let's shut down to 0!"
end
end

carro_prueba = MyCar.new(1950, "green", "lamborghini")

p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."



# Playlist
class Playlist
  def initialize(name, songs)
    @name = name
    @songs = songs
    @currentsong = @songs[0]
    @count = 0
  end

  def playlist
    @name
  end

  def number_of_songs
    @songs.count
  end

  def add_song(adding)
    adding.each do |song|
    @songs << song
    end
  end

  def next_song
    @count += 1
    if @songs[(0+@count)] == nil then @currentsong = @songs[0] and @count = 0
    else @currentsong = @songs[(0+@count)]
    end
  @currentsong
  end
end

playone = Playlist.new("playlist",["cancion1","cancion2"])

p playone.number_of_songs == 2
playone.add_song(["cancion3","cancion4"])
p playone.number_of_songs == 4

p playone.next_song == "cancion2"
p playone.next_song == "cancion3"
p playone.next_song == "cancion4"
p playone.next_song == "cancion1"
