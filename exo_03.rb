#2.3. Un programme qui calcule des âges
#Écris un programme exo_03.rb qui demande son année de naissance à l'utilisateur, puis qui ressort l'âge que l'utilisateur a eu en 2017.
print " year birth "
birth = gets.chomp.to_i
2017_age = 2017 - birth
puts " you had #{2017_age} in 2017 "