class Genre

  attr_reader :name,:artists,:songs

  def initialize name
    @name = name
    @songs = []
    @artists = []
  end

  def add_song song
    @songs << song
  end

  def add_artist artist
    @artists << artist
  end
end
