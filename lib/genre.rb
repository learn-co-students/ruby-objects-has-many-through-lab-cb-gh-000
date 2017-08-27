class Genre

  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song if song.class == Song
    song.genre = self if song.genre != self
    song.artist.genre << self
  end

  def artists
    artist = []
    @songs.each do |song|
      artist << song.artist
    end
    artist
  end
end
