require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/added_bookmark' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect ('/bookmarks')
  end
  
  run! if app_file == $0
end
