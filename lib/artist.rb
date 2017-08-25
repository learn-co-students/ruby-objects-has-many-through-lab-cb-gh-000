class Artist
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
    song.artist = self if song.artist != self
    song.genre.artists << self
  end

  def genres
    genres = []
    @songs.each do |song|
      genres << song.genre
    end
    genres
  end
end
