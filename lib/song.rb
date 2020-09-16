require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre    

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
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
        count={}
        @@genres.each do |i|
        if count[i] == nil
            count[i] = 1
            else
            count[i] += 1
        end
        end  
        count          
    end
    
    
    def self.artist_count
        count={}
        @@artists.each do |i|
        if count[i] == nil
            count[i] = 1
            else
            count[i] += 1
        end
        end  
        count          
    end
    

end