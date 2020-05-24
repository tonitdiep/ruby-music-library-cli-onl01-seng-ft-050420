class MusicImporter
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end

  # def files
  #   @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  # end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end
 
  def import
    self.files.each do |filename|
      Song.create_by_filename(filename)
    end
  end




end
  
  # def import
      # Song.create_from_filename()
    # files.each do {|file| Song.create_from_filename(file)}
  
  # end
