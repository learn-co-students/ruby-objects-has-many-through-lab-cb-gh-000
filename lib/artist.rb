class Artist

  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @songs << song
    @genres << song.genre
  end

end
