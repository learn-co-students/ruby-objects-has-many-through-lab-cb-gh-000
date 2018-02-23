class Song
  attr_accessor :genre, :artist
  attr_reader :title

  def initialize(title, genre)
    @title = title
    genre.add_song(self)
  end
end
