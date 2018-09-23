class MusicImporter 
  attr_accessor :path, :file
  

  def initialize(path = "./spec/fixtures/mp3s")
    @path = path
  end 
  
  def files 
    @file = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end 
  
  def import()
    files.each do |filename|
      Song.create_from_filename(filename)
    end
  end
end 