#2.10. Afficher tous les âges
#Écris un programme exo_10.rb qui demande son année de naissance à l'utilisateur et qui va afficher chaque année depuis son année de naissance jusqu'aujourd'hui. Pour chaque année affichée, le programme devra annoncer l'âge que l'utilisateur avait cette année-là.

print "birth year:"
birth_year = gets.chomp.to_i
actual_year = Time.now.year
puts "années depuis votre naissance :"
(birth_year..actual_year).each do |year|
    age = year - birth_year
    puts "En #{year}, vous aviez #{age} ans"
end