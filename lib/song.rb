class Song
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name, :artist, :genre
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end
end
