class Genre

  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs=[]
  end

  def add_song(song)
    @songs.push(song)
  end

  def artists
    artists =[]
    @songs.each do |element|
      artists.push(element.artist)
    end
    artists.uniq.flatten
  end

end
