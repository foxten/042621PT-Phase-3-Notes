require 'pry'

# music as our example, starting with Albums

class Album
    attr_accessor :album_title, :artist_name, :album_cover, :album_genre, :album_length

    def initialize (title, artist, album, genre, length)
        @album_title = title
        @artist_name = artist
        @album_cover = album
        @album_genre = genre
        @album_length = length 
    end    

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

# songs
# record company/copyright info