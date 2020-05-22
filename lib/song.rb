class Song 
  @@all = []
  attr_accessor :name, :artist 
<<<<<<< HEAD
  def initialize(name)
=======
  def initialize
>>>>>>> f49b6309d77d9f3400b3fb30fd3ee12c88db272f
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(mp3)
    array = mp3.split(" - ")
<<<<<<< HEAD
    song = Song.new(array[1])
    Artist.find_or_create_by_name(array[0]).add_song(song)
    song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
=======
    Song.new(array[1]).artist = array[0]
    
    
  end 
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
>>>>>>> f49b6309d77d9f3400b3fb30fd3ee12c88db272f
  end 
end 