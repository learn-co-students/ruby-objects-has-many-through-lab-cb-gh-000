class Song
  attr_accessor :genre, :name
  attr_reader :artist
  def initialize(name, genre)
    self.name  = name
    self.genre = genre
    genre.songs << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
end
