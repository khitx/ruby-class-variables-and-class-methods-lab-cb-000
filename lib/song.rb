class Song
    attr_accessor :name, :artist, :genre
    @@song_cnt = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@song_cnt += 1
        @@artists << artist
        @@genres << genre
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

    def self.genres
      @@genres
    end

end
