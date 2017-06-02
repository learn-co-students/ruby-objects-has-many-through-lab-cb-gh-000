class Artist
  attr_accessor :songs, :name
  def initialize(name)
    @songs = []
    @name = name
  end
  def add_song(song)
    song.artist = self
    @songs << song
  end
  def genres
    @songs.collect{|song| song.genre}
  end
end
