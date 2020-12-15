class Gallery

  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    #binding.pry
    Painting.all.select{|painting| painting.gallery == self}
  end
  def artists
    #binding.pry
    self.paintings.map{|artist| artist.artist}
  end
  def artist_names
    #binding.pry
    self.artists.map{|artist| artist.name}
  end
  def most_expensive_painting
    #binding.pry
    self.paintings.max_by{|painting| painting.price}
    
  end


end


# **GALLERY**

##   * `Gallery.all`
##     * Returns an `array` of all the galleries

##   * `Gallery#paintings`
##     * Returns an `array` of all paintings in a gallery

##   * `Gallery#artists`
##     * Returns an `array` of all artists that have a painting in a gallery

##   * `Gallery#artist_names`
##     * Returns an `array` of the names of all artists that have a painting in a gallery

#   * `Gallery#most_expensive_painting`
#     * Returns an `instance` of the most expensive painting in a gallery
