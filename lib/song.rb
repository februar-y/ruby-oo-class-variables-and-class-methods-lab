require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |item|
            if genre_hash[item]
                genre_hash[item] += 1
            else
                genre_hash[item] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |item|
            if artist_hash[item]
                artist_hash[item] += 1
            else
                artist_hash[item] = 1
            end
        end
        artist_hash
    end

end
