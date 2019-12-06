class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@all = []
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        @@count += 1
        @@all << self
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        return @@count
    end

    def self.genres
        @@genres = @@genres.uniq
        return @@genres
    end

    # def self.genre_count
    #     return @@all.map{|song,count|{
    #         [genre, genre.count

    #     }}
    # end

    def self.artists
        @@artists = @@artists.uniq
        return @@artists
    end

    def all
        return @@all
    end
end
