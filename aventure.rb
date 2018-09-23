# Jeu d'aventure aléatoire encore plus pourri qu'un jeu en Basic pour Amstrad CPC
nb_pieces_explorees = 1
nb_cles = 0
points_vie = 5
echappe = false
monstre = false
piece_courante = ""

puts "Vous êtes enfermés à la fistinière. Collectez les clés et essayez de vous échapper"
puts "avant qu'un hôte diabolique ne décide de vous perforer avec son pieu tel l'Ulysse d'Homère"
puts "Pour jouer choisissez un des choix possible à chaque tour"
puts ""
while points_vie > 0 and not echappe do
  # code du Jeu

end

if points_vie >0
  puts "Bravo, vous vous êtes achappé, vous avez eu chaud !"
  puts "Vous avez exploré #{nb_pieces_explorees} pièces"
  puts "et trouvé #{nb_cles} clées"
else
  puts "AHAHAHAHAH vous avez perdu !"
  puts "Vous avez exploré #{nb_pieces_explorees} pièces et trouvé #{nb_cles} avant de vous faire capturer"
  puts "Vous allez passé un sale quart d'heure"
end
