get '/login' do 
  @user = User.new
  erb :'sessions/login'
end

post '/login' do 
  user_params = params[:user]
  @user = User.authenticate(user_params[:email], user_params[:password])
  if @user 
    session[:user_id] = @user.id
    redirect '/profile'
  else
    status 422
    @errors = ["Login Failed"]
    User.new(email: params[:email])
    erb :'session/login'
  end
end