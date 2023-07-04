#2.16. La pyramide, dans l'autre sens
#Reprends ton programme exo_15.rb et fais un programme pyramide.rb qui montera au lieu de descendre :

#Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
#> 5
#Voici la pyramide :
    #
   ##
  ###
 ####
#####

puts "bienvenue dans ma pyramide"
puts "Combien d'etages veux tu ?"
print "> "
nombre_etages = gets.chomp.to_i
puts " voici la pyramide: "
nombre_etages.times do |i|
    espaces = " " * (nombre_etages - i - 1)
    etages = '#' * (i + 1)
    puts "#{espaces}#{etages}"
end
