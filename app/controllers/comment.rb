get '/questions/:id/comments/new' do
  logged_in?

  @question = Question.find(params[:id])
  erb :'/comments/new'
end

post '/questions/:id/comments' do
  @question = Question.find(params[:id])
  @comment = @question.comments.new({ body: meow_comment(params[:comment][:body]), author: meow_comment(params[:comment][:author]), user_id: params[:comment][:user_id]})

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
  @comment = @answer.comments.new({ body: meow_comment(params[:comment][:body]), author: meow_comment(params[:comment][:author]), user_id: params[:comment][:user_id]})
  if @comment.save
    redirect "/questions/#{@answer.question_id}"
  else
    @errors = @comment.errors.full_messages
    erb :'/comments/new'
  end
end
