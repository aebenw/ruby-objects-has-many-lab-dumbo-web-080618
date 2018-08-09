class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end


  def add_song(title)

    @songs << title
    @@all << title
    title.artist = self
  end

  def add_song_by_name(title)
     song = Song.new(title)
     song.artist = self
     add_song(song)
   end

   def self.song_count
     @@all.count
   end



end
