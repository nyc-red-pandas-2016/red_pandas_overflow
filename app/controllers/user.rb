get '/users/new' do
  erb :'users/new'
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    erb :'/users/login'
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
    @user_questions = @user.questions
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ['Invalid username or password.']
    erb :'/users/login'
  end
end

get '/users/logout' do
  session.clear
  redirect '/'
end

get '/users/:id' do
  @user_questions = User.find_by(id: params[:id]).questions
  @user_answers = User.find_by(id: params[:id]).questions
  erb :'users/show'
end
