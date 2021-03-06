require './spec/spec_helper'
feature 'adding new sites' do

  scenario 'it can add new links with a title using a form' do
    visit '/links/new'
    fill_in 'new_url', with: 'google.com'
    fill_in 'new_title', with: 'google'
    fill_in 'new_tag', with: 'search engine'
    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:tag_name)).to include('search engine')
    end
  end
