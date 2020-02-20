class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @unique_genre = []
  @@artists = []
  @unique_artists = []
  @genre_hash = {}
  @artist_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end
  
  def self.genre
    @unique_genre = @@genres.uniq
    @unique_genre
  end
  
  def self.artist
    @unique_artists = @@artists.uniq
    @unique_artists
  end
  
  def self.genre_count
    @@genres.each{|key| @genre_hash[key] += 1}
    @genre_hash
  end

  def self.artist_count
    @@artists.each{|key| @artist_hash[key] += 1}
    @artist_hash
  end
end 