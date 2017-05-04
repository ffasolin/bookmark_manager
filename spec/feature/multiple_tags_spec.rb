feature 'adds multiple tags' do
  scenario 'can add and view tags' do
    visit '/links/new'
    fill_in 'new_url', with: 'google.com'
    fill_in 'new_title', with: 'google'
    fill_in 'new_tag', with: 'search, pepsi man, HE-MAN, funky'
    click_button 'submit'
    expect(page).to have_content 'Tags: search | pepsi man'
  end
end
