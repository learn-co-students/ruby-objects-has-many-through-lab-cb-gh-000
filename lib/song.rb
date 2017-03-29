 class Song
   attr_reader :genre
   attr_accessor :artist

  def initialize name, genre
    @name = name
    @genre = genre
    @artist = nil
    @genre.add_song self
  end


end
