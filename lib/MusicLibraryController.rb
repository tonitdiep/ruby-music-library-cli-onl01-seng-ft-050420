require 'pry'
class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    input = " "
      while input != "exit"
        puts "Welcome to your music library!"
        puts "Enter List Songs."
        puts "Enter List Artists."
        puts "Enter List Genres."
        puts "Enter List of Songs by Artist."
        puts "Enter List of Songs by Genre."
        puts "Enter Play Song."
        puts "To quit, enter 'exit'." 
        puts "Choose what's next in the Music Library."
        input = gets.chomp
      end
  end
  
  end