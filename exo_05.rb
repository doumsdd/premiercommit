#2.5. Un programme qui répète
#Écris un programme exo_05.rb qui demande un nombre à l'utilisateur, puis qui écrit autant de fois "Salut, ça farte ?"

print " input number : "
number = gets.chomp.to_i
number.times do
    puts " salut ca farte ? "
end