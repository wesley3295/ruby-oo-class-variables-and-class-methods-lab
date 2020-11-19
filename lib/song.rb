class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
def initialize (name, artist, genre)
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
    count_genre= {}
    @@genres.each do |genre|
       if  count_genre[genre]
        count_genre[genre] += 1
    elsif
        count_genre[genre] = 1
    end
end
    count_genre
end  

def self.artist_count
    count_artist= {}
    @@artists.each do |artist|
       if  count_artist[artist]
        count_artist[artist] += 1
    elsif
        count_artist[artist] = 1
    end
end
    count_artist
end  
end
