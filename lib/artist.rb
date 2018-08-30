class Artist 
  attr_accessor :name, :genre, :song_name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
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
  
  def genres 
    songs.all.collect do |song|
      song.genre
    end 
  end 
  
end