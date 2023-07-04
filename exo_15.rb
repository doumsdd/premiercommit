#2.15. La pyramide
#Construis un programme exo_15.rb qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide à descendre d'autant d'étages que ce nombre. Voici un exemple :

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
    etages = "#" * (i + 1)
    puts etages
end