feature 'home' do
  scenario 'user sees list of links' do
    visit '/'
    Link.create(
    :url => "https://www.theguardian.com/uk",
    :title => "Guardian",
    )
    expect(page).to have_content 'https://www.theguardian.com/uk'
  end
end
