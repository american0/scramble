
require "json"
require "open-uri"

url = "https://THE_ENDPOINT_FROM_DOCUMENTATION/PATH?ACCESS_TOKEN"

# We trigger the HTTP GET request and parse the JSON
#response = JSON.parse(open(url).read())


p "Bem vindo ao programa Scramble"
letters = ("A".."Z").to_a.sample(10)
p letters.sort
p "Coloque sua palavra:"

print ">"

palavra = gets.chomp


# if (letters.size - palavra.chars.size) == (letters - palavra.upcase.chars).size
#   puts "dictionary"
# else
#   puts "não usou"
# end



# if palavra.chars.all? { |letter| palavra.upcase.count(letter) <= letters.count(letter) } == true
#   puts "dictionary"
# else
#   puts "não usou"
# end


# def include_grid?(attempt, grid)
#   gridok = true
#   attempt_letters = attempt.upcase.split('')
#   attempt_letters.each do |letter|
#     if grid.include?(letter) == true
#       grid[grid.index(letter)] = 'NIL'
#     else
#       gridok = false
#     end
#   end
#   return gridok
# end




