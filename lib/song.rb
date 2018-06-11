class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist, genre)
    self.name = name 
    self.artist = artist
    self.genre = genre
    self.class.all << self
    genre.songs << self 
    genre.artists << artist 
  end 
  
  def self.all 
    @@all 
  end 
  
end 

