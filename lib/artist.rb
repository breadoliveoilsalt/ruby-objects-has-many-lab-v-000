class Artist

  @@song_count = [ ]

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count << song
    song
  end

  def add_song_by_name(name)
    s = Song.new(name)
    s.artist = self
    @@song_coung << s
    s
  end

  def self.song_count
    @@song_count
  end

end
