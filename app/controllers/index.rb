require_relative '../models/beerapi'

get '/' do 
  beer_api = BeerAPI.new
  @beer = beer_api.beers
  erb :index
end