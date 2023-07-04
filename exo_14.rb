#2.14. Afficher les bons emails
#Prends le programme exo_13.rb et créé un programme exo_14.rb qui va reprendre l'array des emails créés, et n'afficher que les emails avec un nombre pair.

#"jean.dupont.02@email.fr"
#"jean.dupont.04@email.fr"
#etc..

emails = []
50.times do |i|
    numero = format('%02d', i+1)
    email = "jean.dupont.#{numero}@email.fr"
    emails << email
end

puts "Emails avec un nombre pair :"
emails.each do |email|
    numero = email.scan(/\d+/).first.to_i
    puts email if numero.even?
end
