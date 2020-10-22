feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to the Bookmark Manager' do
    visit('/add_bookmark')
    fill_in 'url', with: 'http://netflix.com'
    fill_in 'title', with: 'Netflix'
    click_button('Submit')

    expect(page).to have_content("Netflix", href: "http://netflix.com")
  end
end
