#2.11. Virer les années
#Le programme exo_10.rb est cool, mais on peut l'améliorer. Écris un programme exo_11.rb qui va demander son âge à l'utilisateur, et qui, pour chaque année depuis sa naissance, dira "Il y a X ans, tu avais Y ans".

print "your age : "
age = gets.chomp.to_i

actual_year = Time.now.year
birth_year = actual_year - age
puts "Années depuis votre naissance:"

(birth_year..actual_year).each do |year|
    annees_ecoulées = year - birth_year
    age_actuel = age - annees_ecoulées
    puts "Il y a #{annees_ecoulees} ans , tu avais #{age_actuel}."
end