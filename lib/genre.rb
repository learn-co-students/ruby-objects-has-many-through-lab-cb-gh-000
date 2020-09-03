class Genre

  attr_accessor :name

  @@all = []
  def initialize(genre)
    @name = genre
    @@all << self
  end

  def self.all
    @@all
  end
  def songs
    Song.all.select {|s| s.genre == self }
  end
  def artists
    Song.all.map {|s| s.artist if s.genre == self }
  end
end
