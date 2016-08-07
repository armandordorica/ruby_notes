dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908", 
  "plainsboro" => "609", 
  "sanfrancisco" => "301"
}

#method to display city names
#method to get area code, dial_book and city name 
def get_city_names(somehash)
  somehash.each { |k, v| puts k }
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do |variable|
  puts "do you want to lookup an area code based on a city name?(Y/N)"
  
  answer = gets.chomp
  if answer != "Y"
    break
  end

  puts "which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp

  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end
