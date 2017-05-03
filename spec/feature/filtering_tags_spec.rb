feature 'testing filters' do
  scenario 'bubble tags' do
    visit '/links/new'
    fill_in 'new_title', with: 'bubbles'
    fill_in 'new_url', with: 'bubble.com'
    fill_in 'new_tag', with: 'bubbles'
    click_button 'submit'
    visit '/tags/bubbles'
    expect(page).to have_content 'bubbles'
  end
end
