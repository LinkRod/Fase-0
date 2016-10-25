def do_block
  start = Time.now
  p "Your start time is: #{start}"
  yield 
  finish = Time.now
  p "Your finish time is: #{finish}"
  difference = finish - start
  p "Your code took #{difference} seconds to complete"
end

do_block{
 def remplaza_num_cuenta(string)
  sleep(6)
  match = string.gsub(/\d{4}-\d{3}/,"XXXX-XXX")
  array = match.scan(/\w{4}-\w{3}-\d{3}/)
end
p remplaza_num_cuenta("Su numero de cuenta es: 1234-123-123 y el numero de cuenta de su hermana es 4321-321-321")
}