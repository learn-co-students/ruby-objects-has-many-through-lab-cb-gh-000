class Artist
  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    if @songs.include?(song)
      return
    end
    @songs << song
    song.artist = self
  end

  def genres
      @songs.map { |e| e.genre }.uniq
  end
end
