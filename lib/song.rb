class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@genres << genre
        @@count += 1
        @@artists << artist
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
        genreHash = {}
        @@genres.each do |gen|
            if genreHash.key?(gen)
                genreHash[gen] += 1
            else 
                genreHash[gen] = 1
            end
        end
        genreHash        
    end

    def self.artist_count
        artistHash = {}
        @@artists.each do |art|
            if artistHash.key?(art)
                artistHash[art] += 1
            else 
                artistHash[art] = 1
            end
        end
        artistHash        
    end

end