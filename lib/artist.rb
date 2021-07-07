class Artist
  attr_accessor :name
  @@all = []

  def initialize(name = "dave")
    @name = name
    @songs = []
    @genres = []
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    @genres << song.genre
    song
  end

  def songs
    @songs
  end

  def genres
    @genres
  end









end
