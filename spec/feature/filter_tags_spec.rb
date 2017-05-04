require './spec/spec_helper'

feature 'filter tags' do
  scenario 'groups links by tags' do
    visit '/links/new'
    fill_in('new_title', with: 'Guardian')
    fill_in('new_url', with: 'guardian.com/uk')
    fill_in('new_tag', with: 'bubbles')
    click_button 'Submit'
    visit '/tags/bubbles'
    expect(page).to have_content 'guardian.com/uk'
    end
end
