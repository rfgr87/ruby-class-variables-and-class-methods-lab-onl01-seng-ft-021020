class Song 
  attr_accessor :song_name, :artist, :genre
  @@count = 0
  @@genre = []
  
  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre
  end

  def self.count
    @@count
  end
  
  def self.genre
    @@genre.uniq
  
  
  
  
end 