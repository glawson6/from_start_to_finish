require 'sinatra'
require_relative './model/cookbook'

get '/' do
  @active = "home"
  erb :home
end

get '/about' do
  @active = "about"
  erb :about
end

get '/recipes' do
  @active = "recipes"
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = Cookbook.search(@search)
  else
    @recipes = Cookbook.all
  end
  erb :recipes
end

get '/recipe/:id' do
  @active = "recipes"
  @recipe = Cookbook.find(params[:id].to_i)
  erb :recipe
end

get '/examples' do
  erb :examples,:layout => false
end