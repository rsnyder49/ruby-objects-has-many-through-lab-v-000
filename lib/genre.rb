class Genre 
  attr_accessor :genre_name, :artist, :song_name
  
  @@all = []
  
  def initialize(genre_name)
    @genre_name = genre_name 
    @artist = artist
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(song_name, artist)
    Song.new(song_name, artist, self)
  end 
  
  def songs 
    Songs.all.select do |song|
      song.genre == self 
    end 
  end 
  
end 