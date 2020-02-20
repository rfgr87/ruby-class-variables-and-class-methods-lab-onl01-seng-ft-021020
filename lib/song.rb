class Song 
  attr_accessor :song_name, :artist, :genre
  @@count = 0
  @@genre = []
  @unique_genre = []
  @@artists = []
  @unique_artists = []
  @genre_hash = {}
  @artist_hash = {}
  
  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre
    @@artists << artist
  end

  def self.count
    @@count
  end
  
  def self.genre
    @unique_genre = @@genre.uniq
    @unique_genre
  end
  
  def self.artist
    @unique_artists = @@artists.uniq
  end
  
  def self.genre_count
    @@genre.each{|key| @genre_hash[key] += 1}
    @genre_hash
  end

  def self.artist_count
    @@artists.each{|key| @artist_hash[key] += 1}
    @artist_hash
  end
end 