class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
     song.artist = self
   end

   def songs
     Song.all.select {|song| song.artist == self}
   end

  def self.all
    @@all
  end

  def artist_name
  artist.name
  end

end
