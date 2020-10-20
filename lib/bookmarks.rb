require 'pg'

class Bookmark
  
  def initialize(bookmark_manager)
    begin 
      @bookmark_database = PG.connect :dbname => 'book_markmanager'
      puts "Successfully loaded database"
    rescue PG::Error
      puts "Error loading database"
    end
  end

  def self.all
    @bookmarks = [
      "https://smile.amazon.co.uk",
      "https://www.asos.com",
      "https://www.netflix.com"
    ]
  end
end
