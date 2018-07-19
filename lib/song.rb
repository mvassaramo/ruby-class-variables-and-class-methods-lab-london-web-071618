require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 #count of num of songs created
  @@all = [] #contain all info for each instance to use to get artists and genres, num of songs of each genre.
  
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists 
    @@artists.uniq 
  end 
  
  def self.genre_count 
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash.include?(genre)
        genre_count_hash[genre] << +1 
      binding.pry 
    end
  end
     
end 