class Artist 
  attr_accessor :name 
  attr_writer :songs
  # attr_writer :genres
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def new_song(title, genre)
    song = Song.new(title,self, genre)
    @songs << song
  end
  
  def self.all 
    @@all
  end
  
  def songs
    Song.all.collect{|song| song.artist == self}
  end
  def genres
    return Song.all.collect{|song| song.artist == self}.map{|song| song.genre}
  end
  
end