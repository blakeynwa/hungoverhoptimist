get '/hops' do 
  beer_api = BeerAPI.new
  @hops = beer_api.show_hops
  erb :'hops/index'
end

get '/hops/:id' do
  beer_api = BeerAPI.new 
  puts params
  @hop = beer_api.find_hop(params[:id])
  erb :'hops/show'
end