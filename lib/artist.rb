class Artist
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
    song.artist = self unless song.artist == self
  end

  def genres
    songs.map { |song| song.genre }
  end

end
