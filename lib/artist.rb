class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    raise ArgumentError, 'Argument is not a song' unless song.is_a? Song
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect {|s| s.genre }
  end

end
