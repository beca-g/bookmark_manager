feature 'displays the bookmark title on the page' do
  scenario 'user adds bookmarks with url and title, checks bookmarks page and sees titles' do
    visit('/add_bookmark')
    fill_in('url', with: 'http://netflix.com')
    fill_in('title', with: 'Netflix')
    click_button('Submit')

    # expect(page).to have_content "http://netflix.com"
    expect(page).to have_content "Netflix"
  end
end