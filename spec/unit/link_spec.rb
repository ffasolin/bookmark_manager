require_relative '../../app/models/link'

RSpec.describe Link do
  link = Link.create(title: 'google', url: 'google.com')
  it 'has a name' do
    expect(link.title).to eq 'google'
  end
  it 'has a url' do
    expect(link.url).to eq 'google.com'
  end
end
