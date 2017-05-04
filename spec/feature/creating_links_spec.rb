require './spec/spec_helper'
feature 'adding new sites' do

  scenario 'it can add new links with a title using a form' do
    visit '/links/new'
    fill_in 'new_url', with: 'google.com'
    fill_in 'new_title', with: 'google'
    click_button 'Submit'

    within 'ul#links' do
    expect(page).to have_content 'google'
    end
  end
end
