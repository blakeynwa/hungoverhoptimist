require_relative '../models/beerapi'

get '/' do 
  beer_api = BeerAPI.new
  @beer = beer_api.random_beer
  erb :index
end

get '/beers/:id' do
  beer_api = BeerAPI.new 
  @beer = beer_api.find_beer(params[:id])
  erb :'beers/show'
end

get '/styles' do 
  beer_api = BeerAPI.new 
  @styles = beer_api.find_styles
  erb :'styles/show'
end

get '/styles/:id' do 
  beer_api = BeerAPI.new
  @style = beer_api.specific_style(params[:id])
  erb :'styles/specific'
end