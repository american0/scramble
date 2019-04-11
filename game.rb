require "json"
require "open-uri"

# 1 - Sortear um grupo de palavras com 10 letras
letters = ("A".."Z").to_a.sample(10)
# 2 - Colocar este grupo de palavras em ordem alfabética
letters.sort!

# 3 - Apresentar o grupo de letras para o usuário
p letters

# 4 - Cumprimentar o usuário e dar a ele um comando
puts "Bom dia mestre. Escreva uma palavra usando as letras acima"

# 5 - Coletar a entrada do usuário
palavra = gets.chomp

# 6 - Validar se o usuário usou apenas letras válidas (do grupo inicial)
resultado = true
palavra.upcase.split("").each  do |letra|
  if letters.include?(letra) == false
    resultado = false
  end
end
if resposta["found"] == true
  puts "Parabéns. Esta palavra hezistsch"
end

if resultado == false
  puts "Meu, você não sabe brincar Joselito"
  puts "PUTS, vc perdeu"
end

# 7 - Validar se a palavra existe
url = "https://wagon-dictionary.herokuapp.com/#{palavra.downcase}"
resposta = JSON.parse(open(url).read())


# 8 - Dizer ao usuário se ele ganhou ou perdeu
