require 'bookmarks'
require 'database_helper'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
            
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy all software")
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
      expect(bookmarks.first.title).to eq "Makers"
    end
  end

  describe '.create' do
    it 'creates new bookmarks' do
      bookmark = Bookmark.create(url: "http://www.instagram.com", title: "Instagram")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq "http://www.instagram.com"
      expect(bookmark.title).to eq "Instagram"
    end
  end
end
