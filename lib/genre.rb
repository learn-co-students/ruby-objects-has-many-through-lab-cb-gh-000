class Genre

  attr_accessor :songs

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    artist_list = @songs.map {|song| song.artist}
    artist_list.uniq
  end
end
