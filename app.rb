require 'sinatra'
require 'sinatra/reloader' if development?
# app.rb is used for routing and views is used for our html code

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
end

  get '/' do
    "hello!"
  end

  get '/secret' do
    "this is a secret page"
  end

  get '/aisha' do
    "this is Aisha's page!"
  end

  get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
  end

  get '/named-cat' do
    p params
    @name = params[:name]
    @age = params[:age]
    @quote = params[:quote]
    erb(:index)
  end
