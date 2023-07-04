#2.13. Une liste d'email
#Écris un programme exo_13.rb qui va créer une liste de 50 faux emails et les stocker dans une array. Voici le format que devront avoir les faux emails :

#"jean.dupont.01@email.fr"
#"jean.dupont.02@email.fr"
#etc..

emails = []
50.times do |i|
    numero = format('%02d', i+1)
    email = "jean.dupont.#{numero}@email.fr"
    emails << email
end

puts emails