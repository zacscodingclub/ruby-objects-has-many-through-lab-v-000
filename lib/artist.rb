class Artist
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect { |song| song.genre }
  end
end