class MusicImporter
  def initialize(path)
    @path = path
  end
  def path
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
  end

  # def files(list_of_filenames)
  #   list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  # end
  # def import
  #   Song.create_from_filename
  # end
end