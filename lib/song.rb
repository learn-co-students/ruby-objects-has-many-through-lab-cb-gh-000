class Song

  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
    genre.add_song(self)
    self
  end

  def self.all
    @@all
  end



end