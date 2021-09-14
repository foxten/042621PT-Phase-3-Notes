require 'pry'

# music as our example, starting with Albums

# store all instances of the Album class
    # return only the artist names 

# create private methods to update the list of songs on an album, and to store the copyright info


class Album
    attr_accessor :album_title, :artist_name, :album_cover, :album_genre, :album_length, :songs
    
    @@all = []

    def initialize (title, artist)
        @album_title = title
        @artist_name = artist 
        @@all << self
    end    
 
    def album_cover album
        self.album_cover = album
    end
   
    def album_genre genre
        self.album_genre = genre
    end
    
    def album_length length
        self.album_length = length
        tracklist([])
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

binding.pry


# # title
# def album_title=(title)
#     @album_title = title 
# end

# def album_title
#     @album_title
# end

# # artist
# def artist_name=(artist)
#     @artist_name = artist
# end 

# def artist_name
#     @artist_name
# end

# # album cover
# def album_cover=(album_art)
#     @album_cover = album_art
# end

# def album_cover
#     @album_cover 
# end

# # genre
# def album_genre=(genre)
#     @album_genre = genre
# end

# def album_genre
#     @album_genre
# end

# # length 
# def album_length=(length)
#     @album_length = length
# end

# def album_length
#     @album_length 
# end

