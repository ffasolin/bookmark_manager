ENV['RACK_ENV'] ||='development'
require 'sinatra/base'
require_relative './models/link'


class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new_link
  end

  post '/links' do
    Link.create(title: params[:new_title], url: params[:new_url], tag: params[:new_tag])
    redirect '/links'
  end
end
