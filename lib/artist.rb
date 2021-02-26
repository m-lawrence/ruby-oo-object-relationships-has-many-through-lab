require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|one_song| one_song.artist == self}
    end

    def new_song(name, genre)
        name = Song.new(name, self, genre)
    end

    def genres
        songs.map do |each_song|
            each_song.genre
        end
    end

end
