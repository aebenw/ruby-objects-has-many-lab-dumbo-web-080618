class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def artist=(new_name)
    @artist = new_name
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist
      return artist.name
    end
  end


end
