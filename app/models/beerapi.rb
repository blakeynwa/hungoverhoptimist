require 'rubygems'
require 'brewery_db'

class BeerAPI 

  def random_beer
    beer_collection = client.beers.random
  end

  def show_hops
    hop_collection = client.hops.all
    hop_collection.select {|hop| hop.description != nil }
  end

  def find_hop(id)
    client.hops.find(id)
  end

  def find_beer(id)
    client.beers.find(id)
  end

  def find_styles
    client.styles.all
  end

  def specific_style(id)
    client.styles.find(id)
  end

  private

  def client
    BreweryDB::Client.new do |config|
      config.api_key = ENV["DBI_BREWERY_API"]
    end 
  end
end