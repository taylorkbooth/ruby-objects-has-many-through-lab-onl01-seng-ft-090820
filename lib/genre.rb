class Genre 
  
  attr_accessor :name, :artists, :genre
    
    @@all = []
  
  def initialize(name)
    @name = name
    @artists = artists
    @genre = genre
  
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 

  def artists 
    self.songs.map do |song|
      song.artist 
    end
  end 
  
  
end