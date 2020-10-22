feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to the Bookmark Manager' do
    visit('/add_bookmark')
    fill_in('url', with: 'http://netflix.com')
    click_button('Submit')

    expect(page).to have_content "http://netflix.com"
  end
end
