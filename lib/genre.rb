class Genre
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end


  # Method takes in the argument 'song' and adds the 'Song' object to the
  # instance variable '@songs' array, and associates the song with the current
  # 'Artist' class.
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
