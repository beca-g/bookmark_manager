require 'pg'
require 'bookmarks'

feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do
    Bookmark.create('http://www.makersacademy.com', 'Makers')
    Bookmark.create('http://www.destroyallsoftware.com', 'Destroy all software')
    Bookmark.create('http://www.google.com', 'Google')

    visit '/bookmarks'

    expect(page).to have_link("Destroy all software", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Google", href: "http://www.google.com")
    expect(page).to have_link("Makers", href: "http://www.makersacademy.com")
  end
end
