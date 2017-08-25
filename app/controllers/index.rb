require_relative '../models/beerapi'

get '/' do 
  beer_api = BeerAPI.new
  @beer = beer_api.random_beer
  @hops = beer_api.show_hops
  erb :index
end