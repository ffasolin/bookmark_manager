require './spec/spec_helper'
feature 'adding new sites' do
before do
  DatabaseCleaner.clean
end
  scenario 'it can add new links with a title using a form' do
    visit '/links/new'
    fill_in 'new_url', with: 'google.com'
    fill_in 'new_title', with: 'google'
    fill_in 'new_tag', with: 'search engine'
    click_button 'submit'
    link = Link.first
    p LinkTag.all
    p link.tags.map(&:tag_name)
    expect(link.tags.map(&:tag_name)).to include('search engine')
    end
  end
