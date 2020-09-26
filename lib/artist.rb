require "pry"
class Artist 
  
  attr_accessor :name, :artists, :genre
  
  @@all = [] 

  def initialize(name, artists, genre)
    @name = name 
    @artists = artists
    @genre = genre
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs 
    Song.all.select {|song| song.artist == self} 
  end

  def genres 
    self.songs.map do |song|
      song.genre
    end
    # binding.pry
  end 


end 