require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    y = Dir.entries(path).select{|file| file.include?("mp3")}
  end

  def import
    files.each do |string|
      str_arr = string.split(" - ")
      artist = Artist.find_or_create_by_name(str_arr[0])
      artist.add_song(str_arr[1])
    end
    # binding.pry
  end

end
