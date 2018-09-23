# Génération automatique de formes
puts "Bienvenue dans notre programme de mise en formes !"
print "Quelle taille voulez-vous pour votre forme ? "

taille_forme = gets.chomp

print "Lettre extérieure : "
lettre_ext = gets.chomp
print "Lettre intérieure : "
lettre_int = gets.chomp

puts "Prêt à dessiner ube forme de taille #{taille_forme}"
puts "En utilisant #{lettre_ext} pour le contour"
puts "et #{lettre_int} pour l'intérieur"

hauteur = taille_forme.to_i
largeur = taille_forme.to_i

#1.upto hauteur do |ligne|
#  # code du dessine
#  if ligne == 1
#    puts lettre_ext * largeur
#  elsif ligne == hauteur
#    puts lettre_ext * largeur
#  else
#    milieu = lettre_int * (largeur - 2)
#    puts "#{lettre_ext}#{milieu}#{lettre_ext}"
#  end
#end

def rectangle(hauteur, largeur, lettre_ext, lettre_int)
  # code de la méthode
  1.upto hauteur do |ligne|
    # code du dessine
    if ligne == 1
      puts lettre_ext * largeur
    elsif ligne == hauteur
      puts lettre_ext * largeur
    else
      milieu = lettre_int * (largeur - 2)
      puts "#{lettre_ext}#{milieu}#{lettre_ext}"
    end
  end
end

rectangle(hauteur, largeur, lettre_ext, lettre_int)
rectangle(hauteur, largeur, lettre_ext, lettre_int)

def triangle(hauteur, lettre_ext, lettre_int)
  1.upto hauteur do |ligne|
    puts ' ' * (hauteur - ligne) + 'X'
  end
end

triangle hauteur, lettre_ext, lettre_int
