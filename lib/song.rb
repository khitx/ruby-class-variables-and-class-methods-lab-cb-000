class Song
    attr_accessor :name, :artist, :genre
    @@song_cnt = 0

    def initialize
        @@song_cnt += 1
    end

    def self.count
      @@song_cnt
    end
end