class Genre
  attr_accessor :name, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    # save
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all   
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    genre = Genre.new(name)
    genre.save 
    genre
  end
end