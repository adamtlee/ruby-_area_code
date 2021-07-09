dial_book = {
  "denver" => "303",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(city_hash)
    city_hash.keys
end
 
# Get area code based on given hash and key
def get_area_code(city_hash, key)
    city_hash[key]
end
 
# Execution flow
loop do
    puts "Would you like to lookup an area code bosed on the city name? (Y/N)"
    prompt_input = gets.chomp.downcase

    break if prompt_input != "y"

    
    puts " "
    puts "Which city would you like to know the area code for?"
    city = gets.chomp.downcase
    20.times{ puts  }

    25.times { print "-" }
    puts " " 
    puts get_city_names(dial_book)
    25.times { print "-" }
    
    puts " "
    puts "enter your selection: "
    city_value = gets.chomp.downcase

    if dial_book.include?(city_value)
        puts "The area code for #{city_value} is #{ get_area_code(dial_book, city_value) }" 
    else
        puts "You entered an invalid city name"
    end 
end