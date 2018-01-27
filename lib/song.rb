require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = ["Jay-Z"]
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        if @@artists.include?(artist)
        else
          binding.pry
          @@artists << artist
        end
        @@genres << genre unless @@genres.include?(genre)
        @@genre_count.each { |g, cnt| g == genre ? cnt += 1 : false}
        @@artist_count.each { |a, cnt| a == artist ? cnt += 1 : false}
    end

    def self.count
      @@count
    end

    def self.artists
      @@artists
    end

    def self.genres
      @@genres
    end

    def self.genre_count
      @@genre_count
    end

    def self.artist_count
      @@artist_count
    end

end
