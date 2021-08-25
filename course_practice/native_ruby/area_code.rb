dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfransisco" => "301",
  "miami" => "305",
  "paloato" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

def get_city_names(hash)
  hash.keys
end

def get_area_code(hash, key)
  return false if !hash.include?(key)
  return hash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  print "Enter your selection: "
  selection = gets.chomp
  area_code = get_area_code(dial_book, selection)
  if area_code
    puts "the area code for #{selection} is #{area_code}"
  else
    puts "Invalid city name"
  end
end