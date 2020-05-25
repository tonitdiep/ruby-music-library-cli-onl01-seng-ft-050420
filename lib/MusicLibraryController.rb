require 'pry'
class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    binding.pry
    # importer = MusicImporter.new(path)
    # importer.import
  end
end