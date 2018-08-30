class Artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    @all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
  end
  
  def songs 
    Songs.all.select do |song|
      song.artist == self 
    end 
  end 
  
end