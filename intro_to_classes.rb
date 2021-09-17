require 'pry'

# music as our example, starting with Albums (x)
# store all instances of the Album class (x)
# create private methods to update the list of songs on an album, and to store the copyright info (x)
# create subclasses for digital vs physical releases (x)

# if our artist wanted to release an album, merch, and event tickets/info, what data could we store in a separate module?

class Album
    # renamed attributes so program can call them without confusing the attribute with the instance method
    attr_accessor :album_title, :artist_name, :cover, :genre, :length, :songs
    
    @@all = []

    def initialize (title, artist)
        @album_title = title
        @artist_name = artist 
        @@all << self
    end    
 
    def album_cover art
        self.cover = album
    end
   
    def album_genre genre
        self.genre = genre
    end
    
    def album_length length
        self.length = length
    end

    def self.all 
        @@all
    end

    private
    # songs
    def tracklist songs
        self.songs = songs
    end

    # record company/copyright info

end 

class Digital < Album
    # streaming services
    attr_accessor :services
    def initialize (title, artist, streaming_services)
        super(title, artist)
        @services = []
        @services << streaming_services
    end

end

class Physical < Album
    # availability 

end


binding.pry