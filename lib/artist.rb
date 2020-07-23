class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end




end
