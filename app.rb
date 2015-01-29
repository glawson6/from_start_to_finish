require 'sinatra'
require_relative './model/cookbook'

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/recipes' do
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = Cookbook.search(@search)
  else
    @recipes = Cookbook.all
  end
  erb :recipes
end

get '/recipe/:id' do
  @recipe = Cookbook.find(params[:id].to_i)
  erb :recipe
end

get '/examples' do
  erb :examples,:layout => false
end