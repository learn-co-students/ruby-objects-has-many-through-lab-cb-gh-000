class Genre
  attr_reader :artists
  attr_reader :name,:songs

  def initialize name
    @name = name
    @songs = []
    @artists = []
  end

end
