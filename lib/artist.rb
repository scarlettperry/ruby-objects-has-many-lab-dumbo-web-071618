class Artist
  attr_accessor :name, :songs #<-- :songs needs attr_accessor

  def initialize(name) #initialized with name
    @name = name #has an attr_accessor for name
    @songs = [] #later to add songs to artist's collection
  end

  def add_song(song) #takes in argument of song
    song.artist = self #associates that song with artist
    @songs << song #pushes new song to the collection
  end

  def add_song_by_name(name) #takes in argument of song name
    song = Song.new(name) #creates new song
    song.artist = self #associates that song with artist
    @songs << song #pushes new song to the collection
  end

   def self.song_count
     Song.all.count #uses global variable storing ALL songs & not just the one object's songs
   end
end
