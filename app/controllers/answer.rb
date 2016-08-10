get '/answers/new' do
  erb :'answers/new'
end


post '/answers' do
  answer = Answer.new(params[:comment][:body])
  @message = "Answer Added!"
  if answer.save
    erb :'index'
  else
    @errors = answer.errors.full_messages
    erb :'/answers/new'
  end
end

get '/answers/:id' do
  erb :'answers/show'
end

delete '/answers/:id' do
  answer = Answer.find(params[:id])
  answer.delete
  redirect :index
end
