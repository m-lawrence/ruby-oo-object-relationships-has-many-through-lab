require 'pry'

class Genre 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|one_song| one_song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
      songs.map do |song|
        song.artist
      end
    end

end
