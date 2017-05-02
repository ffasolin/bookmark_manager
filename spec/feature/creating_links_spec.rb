require './spec/spec_helper'
feature 'adding new sites' do
before do
  DatabaseCleaner.clean
end
  scenario 'it can add new links with a title using a form' do
    visit '/links/new'
    fill_in 'new_url', with: 'google.com'
    fill_in 'new_title', with: 'google'
    click_button 'submit'

    within 'ul#links' do
    expect(page).to have_content 'google'
    end
  end
end
