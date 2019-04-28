class Artist
  attr_reader :name
  attr_accessor :title, :genre, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(title, genre)
    Song.new(title,self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
  
end
