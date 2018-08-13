class Genre 
  attr_accessor :name
  attr_accessor :songs
  attr_writer :artists
  
  def initialize(name)
    @name = name 
    @songs = []
    @artists = []
  end
  
  def artists
    @artists = Song.all.collect{|song| song.genre == self}.map{|song| song.artist}
    return @artists
  end

end