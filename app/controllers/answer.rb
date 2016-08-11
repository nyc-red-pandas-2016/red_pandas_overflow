get '/answers/new' do
  erb :'/answers/new'
end

post '/answers' do
  answer = Answer.new(params[:answer])
  if answer.save
    @question = Question.find(params[:answer][:question_id])
    erb :'/questions/_display_specific_question'
  else
    @question = Question.find(params[:answer][:question_id])
    @errors = answer.errors.full_messages
    erb :'/questions/_display_specific_question'
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

get '/answers/:id/comments/new' do
  @answer = Answer.find(params[:id])
  require_user
  erb :'/comments/new'
end

post '/answers/:id/comments' do
  @answer = Answer.find(params[:id])
  @comment = @answer.comments.new(params[:comment])
  if @comment.save
    redirect "/questions/#{@answer.question_id}"
  else
    @errors = @comment.errors.full_messages
    erb :'/comments/new'
  end
end
