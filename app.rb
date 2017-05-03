require 'sinatra'
require './models/link'

class Bookmark < Sinatra::Base

  get '/links' do
    @link = Link.all
    erb(:index)
  end

  get '/links/new' do
    erb(:add_links)
  end

  post '/links' do
    Link.create(:url => params[:url], :title => params[:title])
    redirect '/links'
  end
end
