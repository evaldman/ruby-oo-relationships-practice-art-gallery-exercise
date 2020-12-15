class Artist
   
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end
  
  def paintings
    #binding.pry
    Painting.all.select{|painting| painting.artist == self}
  end
  def galleries
    #binding.pry
    self.paintings.map{|gallery| gallery.gallery}      
  end
  def cities
    #binding.pry
    self.galleries.map{|gallery| gallery.city}
  end
  
  def self.total_experience
    #binding.pry
    all_experience = self.all.collect{|artist| artist.years_experience}
    all_experience.sum.to_i
  end
  def self.most_prolific
    #binding.pry
    all_experience = self.all.collect{|artist| artist.years_experience}
    all_experience.sort.last
  end
  def create_painting(title, price, gallery)
    #binding.pry
    Painting.new(title, price, gallery, self)
  end

end



# **ARTIST**

##   * `Artist.all`
##     * Returns an `array` of all the artists

##   * `Artist#paintings`
##     * Returns an `array` of all the paintings by an artist

##   * `Artist#galleries`
##     * Returns an `array` of all the galleries that an artist has paintings in

##   * `Artist#cities`
##     * Return an `array` of all cities that an artist has paintings in

##   * `Artist.total_experience`
##     * Returns an `integer` that is the total years of experience of all artists

##   * `Artist.most_prolific`
##     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

##   * `Artist#create_painting`
##     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist