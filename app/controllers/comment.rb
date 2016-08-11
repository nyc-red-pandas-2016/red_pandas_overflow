get '/questions/:id/comments/new' do
  logged_in?

  @question = Question.find(params[:id])
  erb :'/comments/new'
end

post '/questions/:id/comments' do
  @question = Question.find(params[:id])
  @comment = @question.comments.new(params[:comment])
  if @comment.save
    redirect "/questions/#{params[:id]}"
  else
    @errors = @comment.errors.full_messages
    erb :'/comments/new'
  end
end

get '/answers/:id/comments/new' do
  logged_in?

  @answer = Answer.find(params[:id])
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
