#2.4. Un programme centenaire
#Écris un programme exo_04.rb qui demande son année de naissance à l'utilisateur, puis qui ressort l'année où l'utilisateur aura 100 ans.

print " year birth "
birth = gets.chomp.to_i
in_100_years = birth + 100
puts "you'll have 100 in #{in_100_years}."