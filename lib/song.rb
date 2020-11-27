require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
    end
end

binding.pry
puts "Happy Thanksgiving! But I really wish I could use the #tally for the last two methods!!!"