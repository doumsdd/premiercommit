#2.9. Afficher les années
#Écris un programme exo_09.rb qui demande son année de naissance à l'utilisateur, puis qui va ressortir chaque année depuis son année de naissance jusqu'aujourd'hui.

print "birth year:"
birth_year = gets.chomp.to_i
actual_year = Time.now.year
puts "années depuis votre naissance :"
(birth_year..actual_year).each do |year|
    puts year
end