  require "http"
  system "clear"
  puts "Select product id:"
  id = gets.chomp.to_i
  
  response = HTTP.get("http://localhost:3000/api/products.json") 
  parse_data = response.parse
  product = parse_data[id]

  puts product