class Genre
    attr_accessor :name, :songs

    def initialize(name)
        @name, @songs = name, []
    end

    def add_song(song)
        @songs << song
    end

    def artists
        @songs.map {|song| song.artist}
    end
end
