class Genre
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs.dup.freeze
  end

  def add_song(song)
    @songs << song if song.is_a?(Song) && !songs.include?(song)
  end

  def artists
    songs.map { |song| song.artist }
  end

end
