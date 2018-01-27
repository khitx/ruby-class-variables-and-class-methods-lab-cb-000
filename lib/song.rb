class Song
    attr_accessor :name, :artist, :genre
    @@song_cnt = 0
    @@artists = []

    def initialize(name, artist, genre)
        @@song_cnt += 1
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
      @@song_cnt
    end

    def self.artists
      @@artists
    end

    
end
