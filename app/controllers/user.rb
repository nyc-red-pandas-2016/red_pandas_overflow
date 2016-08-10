get '/users/new' do
  erb :'users/new'
end


post '/users' do
  @user = User.new(params[:user])
  @message = "Accout Successfully Created!"
  if @user.save
    erb :'index'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/login' do
  erb :'/users/login'
end

post '/users/login' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = current_user
    erb :'/users/show'
  else
    @errors = ['Invalid Login Credentials']
    erb :'/users/login'
  end
end

get '/users/:id' do
  erb :'users/show'
end

get '/users/logout' do
  session.clear
  erb :'index'
end

delete '/users' do
  @user = current_user
  @user.delete
  redirect :index
end

