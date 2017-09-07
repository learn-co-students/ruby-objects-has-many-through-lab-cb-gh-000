class Artist

  attr_accessor :songs, :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def genres
    genres =[]
    @songs.each do |element|
      genres.push(element.genre)
    end
    genres.uniq.flatten
  end


end
