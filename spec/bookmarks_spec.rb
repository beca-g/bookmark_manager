require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers")

      bookmarks = Bookmark.all

      expect(bookmark.id).to eq bookmark.id
      expect(bookmark.url).to eq "http://www.makersacademy.com"
      expect(bookmark.title).to eq "Makers"
    end
  end

  describe '.create' do
    it 'creates new bookmarks' do
      bookmark = Bookmark.create(url: "http://www.instagram.com", title: "Instagram")

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq bookmark.id
      expect(bookmark.url).to eq "http://www.instagram.com"
      expect(bookmark.title).to eq "Instagram"
    end
  end
end
