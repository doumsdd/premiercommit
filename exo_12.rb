#2.12. Annoncer l'âge, option BG
#Notre programme exo_11.rb est devenu beau gosse. Écris un programme exo_12.rb qui va faire la même chose, sauf que si X et Y sont égaux, il dira "Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui".

print "your age : "
age = gets.chomp.to_i

actual_year = Time.now.year
birth_year = actual_year - age
puts "Années depuis votre naissance:"
(birth_year..actual_year).each do |year|
    annees_ecoulées = year - birth_year
    age_actuel = age - annees_ecoulées

    if annees_ecoulees == age_actuel
        puts "il y'a #{annees_ecoulees} ans , tu avais la moitié de ton age aujourd'hui"
        
    else
        puts "il y'a #{annees_ecoulees} ans , tu avais #{age_actuel} ans"
        
    end
end