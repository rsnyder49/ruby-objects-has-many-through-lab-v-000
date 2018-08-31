class Genre 
  attr_accessor :name, :artist, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = artist
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end 
  
  def songs 
    Songs.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def artists 
    songs.collect do |song|
      song.artist 
    end
  end 
  
end 