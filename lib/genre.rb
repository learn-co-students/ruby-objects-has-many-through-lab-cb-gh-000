class Genre
  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect { |song| song.artist }
  end
end
