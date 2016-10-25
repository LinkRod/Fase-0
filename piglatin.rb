p "Dame una palabra: "
word = gets.chomp
if word.chars[0].count("aeiou") == 1
  p word + "way"
else
  num = word.chars.index{|x| x.count("aeiou") == 1}
  p aux = word[num..word.size] + word[0..num-1] + "ay"
end