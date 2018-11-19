class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @artist.songs << self
    @artist.genres << genre
    @genre.songs << self
    @genre.artists << artist
    @@all << self
  end

end
