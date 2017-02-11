class Artist

  attr_reader :songs, :name


  def initialize(name)
    @songs = []
    @name = name
    @genres = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def genres
    genres = @songs.map {|song| song.genre}
    genres.uniq
  end

end
