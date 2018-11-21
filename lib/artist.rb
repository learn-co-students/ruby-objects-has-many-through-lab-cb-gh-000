require "pry"

class Artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  attr_reader :name

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.collect do |song|
      if song.artist.name == @name
        song
      end
    end
  end

  def genres
    output = songs.collect do |song|
      song.genre
    end
    #binding.pry
  end

end
