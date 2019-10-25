class Artist

  attr_accessor :name, :songs
  
  @@total_songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist=(self) 
    @songs << song
    @@total_songs << song
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end
  
  def self.song_count
    
    Song.all.count
    
    # count = 0

    # @@total_songs.each do |song|
    #   puts song.name
    #   count += 1
    # end
    # return count
  end
  
end