class Song
  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist == nil #can't check self.artist.name because if nil then it would come from self.artist
      nil
    else
      self.artist.name
    end
  end
end
