class Song
   
    @@count = 0 
    @@genres = []
    @@artists = []
   
  
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
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
        @@genre_count = {}
 
        @@genres.group_by(&:itself).each {|genre, songs| @@genre_count[genre] = songs.count}
        @@genre_count
    end 

    def self.artist_count
        @@artist_count = {}
        @@artists.group_by(&:itself).each {|artist, songs| @@artist_count[artist] = songs.count}
        @@artist_count
    end
    


    
end