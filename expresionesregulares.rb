def cuenta(string)
  if string.match(/\d{4}-\d{3}-\d{3}/) != nil then true else false
  end
end
p cuenta("Su numero de cuenta es: 1234-123-123") == true

def exist?(string)
   match = string.match(/\d{4}-\d{3}-\d{3}/)
   match[0]
end
p exist?("Su numero de cuenta es: 1234-123-123") == "1234-123-123"

def num_de_cuenta(array)
    match = array.scan(/\d{4}-\d{3}-\d{3}/)
end
p num_de_cuenta("Su numero de cuenta es: ") == []
p num_de_cuenta("1234-123-123") == ["1234-123-123"]

def replace(string)
  string.gsub(/\d{4}-\d{3}/,"XXXX-XXX")
end
p replace("Su numero de cuenta es: 1234-123-123") == "Su numero de cuenta es: XXXX-XXX-123"

def formatted(string)
  string.gsub(/(\d{4})\.*(\d{3})\.*(\d{3})/, '\1-\2-\3')
end
p formatted("Su numero de cuenta es: 1234-123-123") 