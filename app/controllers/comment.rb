get '/comments/new' do
  erb :'users/new'
end


post '/comments' do
  comment = User.new(params[:comment][:body])
  @message = "Comment Added!"
  if comment.save
    erb :'index'
  else
    @errors = user.errors.full_messages
    erb :'/comments/new'
  end
end

get '/comments/:id' do
  erb :'comments/show'
end

delete '/comments/:id' do
  comment = Comment.find(params[:id])
  comment.delete
  redirect :index
end
