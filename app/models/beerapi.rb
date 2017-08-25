require 'rubygems'
require 'brewery_db'

class BeerAPI 

  def random_beer
    client.beers.random
  end

  def show_hops
    client.hops.all
  end


  private

  def client
    BreweryDB::Client.new do |config|
      config.api_key = ENV["DBI_BREWERY_API"]
    end 
  end
end