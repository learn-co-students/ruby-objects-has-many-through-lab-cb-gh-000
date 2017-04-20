class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name, @songs = name, []
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def genres
        @songs.map {|song| song.genre}
    end
end
