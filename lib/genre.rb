class Genre
   @@all =[]
   attr_accessor :name , :artist , :songs

    def initialize(name)
     @name = name
     @@all << self
     @songs =[]
   end

    def self.all
     @@all
   end

    def artists
     @songs.collect{|song| song.artist }
   end
end
