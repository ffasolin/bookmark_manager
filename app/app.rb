require 'sinatra'

class Bookmark < Sinatra::Application

  get '/' do
    erb(:index)
  end
  
end
