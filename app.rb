require 'sinatra'
require './models/link'

class Bookmark < Sinatra::Base

  get '/links' do
    @link = Link.all
    
    erb(:index)
  end

end
