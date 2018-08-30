class Genre 
  @@all = []
  
  def initialize(name, artist)
    @name = name 
    @artist = artist 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(song_name, artist)
    Song.new(song_name, artist, self)
  end 
  
end 