# Génération automatique de formes
puts "Bienvenue dans notre programme de mise en formes !"
print "Quelle taille voulez-vous pour votre forme ?"

taille_forme = gets

print "Lettre extérieure : "
lettre_ext = gets
print "Lettre intérieure : "
lettre_int = gets

puts "Prêt à dessiner ube forme de taille #{taille_forme}"
puts "En utilisant #{lettre_ext} pour le contour"
puts "et #{lettre_int} pour l'intérieur"
