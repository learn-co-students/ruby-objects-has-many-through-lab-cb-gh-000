class Artist
  attr_accessor :name
  @@all = []
  def initialize (name )
    @name = name
    @@all <<self
  end
  def new_song(name,genre)
    song = Song.new(name, self , genre)
  end
  def songs
    Song.all.select {|s| s.artist == self }
  end

  def genres
    Song.all.map {|s| s.genre if s.artist == self }
  end

  def self.all
    @@all
  end

end
