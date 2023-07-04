#2.8. Compte à rebours
#Écris un programme exo_08.rb qui demande un nombre à l'utilisateur, puis qui affiche un compte à rebours à partir de ce nombre, jusqu'à 0.

print " input number : "
number = gets.chomp.to_i
puts "Countdown #{nombre} :"

while nombre >= 0 do
    puts nombre
    nombre -= 1
end