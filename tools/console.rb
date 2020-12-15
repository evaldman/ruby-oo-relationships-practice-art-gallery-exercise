require 'pry'
require_relative '../config/environment.rb'


#(name, years_experience)
artist1 = Artist.new("Bobby", 3)
artist2 = Artist.new("Timmy", 6)
artist3 = Artist.new("Freddy", 14)

#(name, city)   
gallery1 = Gallery.new("Gal1", "NYC")
gallery2 = Gallery.new("Gal2", "LA")
gallery3 = Gallery.new("Gal3", "NYC")

#(title, price)  also needs artist and gallery
painting1 = Painting.new("sky", 45, artist1, gallery1)
painting2 = Painting.new("land", 50, artist2, gallery1)
painting3 = Painting.new("sun", 60, artist1, gallery2)



binding.pry

puts "Bob Ross rules."
