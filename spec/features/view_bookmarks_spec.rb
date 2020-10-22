require 'pg'
require 'bookmarks'

feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do
    Bookmark.create('http://www.makersacademy.com')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com')

    visit '/bookmarks'

    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
