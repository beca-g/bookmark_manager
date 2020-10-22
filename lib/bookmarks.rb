require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 

      result = connection.exec('SELECT * FROM bookmarks;')
      result.map { |bookmark| 
        Bookmark.instance = {id: bookmark['id'], url: bookmark['url'], title: bookmark['title']} 
  }

      # each row equal to a new instance of the Bookmark class
      # 
  end

  def self.create(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 

    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
  end
end
