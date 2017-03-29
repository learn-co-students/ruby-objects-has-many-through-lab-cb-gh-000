class Artist
  attr_reader :name

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    return nil unless new_song? song
    @songs << song
    song.artist = self
    song.genre.add_artist self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect{|song| song.genre}
  end

  def new_song? song
    !@songs.include?(song)
  end

end
