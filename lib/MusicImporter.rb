class MusicImporter
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def path

  end

  # def files
  #   files = []
  #   Dir.new(self.path).each do |file|
  #     files << file if file.length > 5
  #   end
  #   files
  #   end
  # end
  
  # def import
  # self.files.each do |filename|
  #     Song.new_by_filename(filename)
  #   end
  # end
end