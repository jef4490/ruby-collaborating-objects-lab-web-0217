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

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if all.collect{|obj| obj.name}.include?(name)
      all.find{|obj| obj.name}
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    y = songs.collect{|obj| obj.name}
    y.each do |song|
      puts song
    end
  end

end
