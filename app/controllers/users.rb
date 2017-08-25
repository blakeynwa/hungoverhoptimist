get '/users/new' do 
  erb :'users/register'
end

post '/users' do 
  @user = User.create(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/profile'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/register'
  end
end

get '/profile' do 
  erb :'users/profile'
end