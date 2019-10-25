class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if(@artist)
      @artist.name
    else
      nil
    end
  end
  
  def artist=(artist_name)
    @artist = artist_name
    artist_name.songs << self
  end
  
end