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
    info = filename.split(" - ")
    artist, name, genre = info[0], info[1], info[2].gsub( ".mp3" , "")
   
    # song_info = filename.chomp(".mp3").split(" - ")
    # song = Song.new(song_info[1]) 
    # song.artist_name = song_info[0]
    # song
  end
  
  def self.create_from_filename(filename)
    new_from_filename(filename)
  end
  
end