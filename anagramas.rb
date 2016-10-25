def canonical(word)
  word.chars.sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p canonical("hola")
p are_anagrams?("hola","ahlo")

def anagrams_for(word,array)
  arr = []
  array.each {|z| if are_anagrams?(word,z) then arr << z end}
  arr
end
arre = ["amor", "moro", "roma", "rama", "omar", "pata", "mora", "ramo"]
p anagrams_for("adios", arre)
p anagrams_for("roma", arre)