

# Créé un programme exo_01.rb qui affiche "Bonjour, monde !".
 puts "Bonjour, monde !"

# 2.2. Un programme qui dit bonjour
#Écris un programme exo_02.rb qui demande le prénom de l'utilisateur, et qui salue l'utilisateur avec "Bonjour, prénom !"
puts "your name:"
name = gets
puts "Hello " + name

#2.3. Un programme qui calcule des âges
#Écris un programme exo_03.rb qui demande son année de naissance à l'utilisateur, puis qui ressort l'âge que l'utilisateur a eu en 2017.
print " year birth "
birth = gets.chomp.to_i
2017_age = 2017 - birth
puts " you had #{2017_age} in 2017 "

#2.4. Un programme centenaire
#Écris un programme exo_04.rb qui demande son année de naissance à l'utilisateur, puis qui ressort l'année où l'utilisateur aura 100 ans.

print " year birth "
birth = gets.chomp.to_i
in_100_years = birth + 100
puts "you'll have 100 in #{in_100_years}."

#2.5. Un programme qui répète
#Écris un programme exo_05.rb qui demande un nombre à l'utilisateur, puis qui écrit autant de fois "Salut, ça farte ?"

print " input number : "
number = gets.chomp.to_i
number.times do
    puts " salut ca farte ? "
end

#2.6. Un programme qui répète (bis)
#Écris un programme exo_06.rb qui demande un nombre à un utilisateur, puis qui écrit autant de fois -1 "Bonjour toi !". Ainsi, si l'utilisateur rentre 10, le programme devra écrire 9 fois "Bonjour toi !"

print " input number : "
number = gets.chomp.to_i
(number-1).times do
    puts " Bonjour toi !"
end

#2.7. Compter
#Écris un programme exo_07.rb qui demande un nombre à l'utilisateur, puis qui compte jusqu'à ce nombre.
print " input number : "
number = gets.chomp.to_i

i = 1
while i <= nombre do
    puts i
    i += 1
end


#2.8. Compte à rebours
#Écris un programme exo_08.rb qui demande un nombre à l'utilisateur, puis qui affiche un compte à rebours à partir de ce nombre, jusqu'à 0.

print " input number : "
number = gets.chomp.to_i
puts "Countdown #{nombre} :"

while nombre >= 0 do
    puts nombre
    nombre -= 1
end


#2.9. Afficher les années
#Écris un programme exo_09.rb qui demande son année de naissance à l'utilisateur, puis qui va ressortir chaque année depuis son année de naissance jusqu'aujourd'hui.

print "birth year:"
birth_year = gets.chomp.to_i
actual_year = Time.now.year
puts "années depuis votre naissance :"
(birth_year..actual_year).each do |year|
    puts year
end

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
    numero = email.scan(/\d+/).firts.to_i
    puts email if numero.even?
end


#2.15. La pyramide
#Construis un programme exo_15.rb qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide à descendre d'autant d'étages que ce nombre. Voici un exemple :

#Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
#> 5
#Voici la pyramide :
#
##
###
####
#####

puts "bienvenue dans ma pyramide"
puts "Combien d'etages veux tu ?"
print "> "
nombre_etages = gets.chomp.to_i
puts " voici la pyramide: "
nombre_etages.times do |i|
    etages = "#" * (i + 1)
    puts etages
end

#2.16. La pyramide, dans l'autre sens
#Reprends ton programme exo_15.rb et fais un programme pyramide.rb qui montera au lieu de descendre :

#Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
#> 5
#Voici la pyramide :
    #
   ##
  ###
 ####
#####

puts "bienvenue dans ma pyramide"
puts "Combien d'etages veux tu ?"
print "> "
nombre_etages = gets.chomp.to_i
puts " voici la pyramide: "
nombre_etages.times do |i|
    espaces = " " * (nombre_etages - i - 1)
    etages = '#' * (i + 1)
    puts "#{espaces}#{etages}"
end




#2.17. La pyramide, version expert
#Crée un programme exo_17.rb qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide qui monte et qui descend, comme montré ci-dessous :

#Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
#> 5
#Voici la pyramide :
    #
   ###
  #####
 #######
#########

puts "bienvenue dans ma pyramide"
print "> "
etages = gets.chomp.to_i
puts "voici la pyramide: "
#etage loop
etages.times do |n|
    #calcul d'espaces et dièses 
    espaces = etages - n - 1
    diese = 2 * n + 1

    #affichage espaces
    print " " * espaces

    # Affichage des dièses
    puts '#' * diese
end

# loop chaque etage
(etages - 1).downto(0) do |n|
    #calcul d'espaces et dieses
    espaces = etages - n - 1
    diese = 2 * n + 1

    #affichage des espaces
    print " " * espaces

    #affichage des dieses
    puts "#" * diese
end