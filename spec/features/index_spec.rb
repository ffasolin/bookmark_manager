feature 'home' do
  scenario 'user sees list of links' do
    visit '/links/new'
    fill_in('title', with: 'Guardian')
    fill_in('url', with: 'https://www.theguardian.com/uk')
    click_button 'Submit'
    expect(page).to have_content 'https://www.theguardian.com/uk'
  end
end
