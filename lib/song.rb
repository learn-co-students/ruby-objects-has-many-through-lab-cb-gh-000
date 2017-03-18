class Song
  attr_accessor :title, :artist

  def initialize(title, genre)
    @title = title
    @genre = genre
    @genre.songs << self
  end

  def genre
    @genre
  end


end
