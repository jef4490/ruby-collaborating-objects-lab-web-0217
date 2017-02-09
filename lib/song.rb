require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    arr = file.split(" - ")
    title = arr[1]
    # binding.pry
    song = Song.new(title)
    artist = Artist.find_or_create_by_name(arr[0])
    song.artist = artist
    song
  end

end
