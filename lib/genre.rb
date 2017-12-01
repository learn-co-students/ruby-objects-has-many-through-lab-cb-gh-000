class Genre
  attr_reader :name, :songs
  def initialize(name)
    @name  = name
    @songs = []
  end
  def artists
    self.songs.map { |e| e.artist }.uniq
  end
end
