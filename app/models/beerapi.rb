require 'rubygems'
require 'brewery_db'

class BeerAPI 

  def beers
    client.beers.random
  end


  private

  def client
    BreweryDB::Client.new do |config|
      config.api_key = ENV["DBI_BREWERY_API"]
    end 
  end
end