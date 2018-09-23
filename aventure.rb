#!/usr/local/bin/ruby

# Jeu d'aventure aléatoire encore plus pourri qu'un jeu en Basic pour Amstrad CPC
nb_pieces_explorees = 1
nb_cles = 0
points_vie = 5
echappe = false
monstre = false
piece_courante = ""

puts "Vous êtes enfermés à la FISTINIERE après vous êtes perdu sur des routes de campagne à la con "
puts ""
puts "Collectez les clés et essayez de vous échapper avant qu'un hôte diabolique ne décide "
puts "de vous perforer avec son pieu tel l'Ulysse d'Homère"
puts ""
puts "Pour jouer choisissez un des choix possible à chaque tour"
puts ""

while points_vie > 0 and not echappe do
  # code du Jeu
  actions = ["d - sortir de la pièce", "r - rechercher comme Lycos le chienchien"]
  puts "Vous êtes dans la pièce #{nb_pieces_explorees}"
  puts piece_courante
  if monstre
    puts "Il y a une personne en cuir très excitée en face de toi qui te regarde d'un oeil lubrique et visqueux"
    actions << "c - combattre ce fils de pute"
  end

  print "Que voulez-vous faire ? (#{actions.join(', ')}) : "
end

if points_vie >0
  puts "Bravo, vous vous êtes achappé, vous avez eu chaud !"
  puts "Vous avez exploré #{nb_pieces_explorees} pièces"
  puts "et trouvé #{nb_cles} clées"
else
  puts "AHAHAHAHAH vous avez perdu !"
  puts "Vous avez exploré #{nb_pieces_explorees} pièces et trouvé #{nb_cles} avant de vous faire capturer"
  puts "Vous allez passer un sale quart d'heure"
end
