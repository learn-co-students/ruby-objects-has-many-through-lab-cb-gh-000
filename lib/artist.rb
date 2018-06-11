class Artist 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  attr_accessor :name, :songs, :genres 
  
  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []
    self.class.all << self 
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    new_song.genre = genre 
    new_song.artist = self 
    self.songs << new_song 
    self.genres << genre 
    new_song 
  end 
  
end 
    


