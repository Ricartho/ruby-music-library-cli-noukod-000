class Genre 
  attr_accessor :name, :songs, :artist 
  
  extend Concerns::Findable
  
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
  end 
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    ab=self.new(name)
    ab.save
    ab
  end
  
  def artists
    songs.collect {|song| song.artist}.uniq
  end
  
  
end