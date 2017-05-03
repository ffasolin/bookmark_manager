ENV['RACK_ENV'] ||='development'
require 'sinatra/base'
require 'pry'
require_relative './models/data_mapper_setup'


class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new_link
  end

  post '/links' do
    link = Link.new(title: params[:new_title], url: params[:new_url])
    tag = Tag.first_or_create(tag_name: params[:new_tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

end
