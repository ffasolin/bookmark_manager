feature 'adding tags' do
scenario 'adds tags' do
  DatabaseCleaner.clean
  visit '/links/new'
  fill_in 'new_title', with: 'google'
  fill_in 'new_url', with: 'google.com'
  fill_in 'new_tag', with: 'search'
  click_button 'submit'
  link = Link.first
  expect(link.tags.map(&:name)).to include('search')
end
end
