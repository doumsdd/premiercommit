#2.17. La pyramide, version expert
#Crée un programme exo_17.rb qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide qui monte et qui descend, comme montré ci-dessous :

#Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
#> 5
#Voici la pyramide :
    #
   ###
  #####
 #######
#########

puts "bienvenue dans ma pyramide"
print "> "
etages = gets.chomp.to_i
puts "voici la pyramide: "
#etage loop
etages.times do |n|
    #calcul d'espaces et dièses 
    espaces = etages - n - 1
    diese = 2 * n + 1

    #affichage espaces
    print " " * espaces

    # Affichage des dièses
    puts '#' * diese
end

# loop chaque etage
(etages - 1).downto(0) do |n|
    #calcul d'espaces et dieses
    espaces = etages - n - 1
    diese = 2 * n + 1

    #affichage des espaces
    print " " * espaces

    #affichage des dieses
    puts "#" * diese
end