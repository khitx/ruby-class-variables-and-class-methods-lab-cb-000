class Song
    attr_accessor :name, :artist, :genre
    @@song_cnt = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@song_cnt += 1
        @@artists << artist
        @@genres << genre
        @@genre_count.each { |g, cnt| g == genre ? cnt += 1 }
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
