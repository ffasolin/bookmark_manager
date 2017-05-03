feature 'adds links' do
  scenario 'user adds new links to the list' do
    visit '/links/new'
    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk/')
    click_button 'Submit'
    expect(page).to have_content 'http://www.bbc.co.uk/'
  end
end
