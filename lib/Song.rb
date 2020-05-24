require 'pry'
class Song
  extend Concerns::Findable
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
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
    song = Song.new(name)
    song.save 
    song
  end
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  def genre=(genre)
    @genre = genre
    if !(genre.songs.include?(self))
    genre.songs << self
    end
  end

  def self.new_from_filename(filename)
  
      #1) get the name of the song from that string
      #2) create a new instance of a song with that as the name
  
    info = filename.split(" - ")
    artist, name, genre = info[0], info[1], info[2].gsub( ".mp3" , "")
    
    genre = Genre.find_or_create_by_name(genre)
    artist = Artist.find_or_create_by_name(artist)
    Song.new(name, artist, genre)
  end
  
  

  
  def self.create_from_filename(filename)
      return new_from_filename(filename)
  end
  
end