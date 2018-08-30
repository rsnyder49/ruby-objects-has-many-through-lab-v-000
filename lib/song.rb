class Song 
  @@all = []
  
  def initialize(song_name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
end 