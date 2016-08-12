get '/questions/:id/comments/new' do
  logged_in?
  @question = Question.find(params[:id])
  if request.xhr?
    erb :'/comments/comment_form', layout: false
  else
    erb :'/comments/new'
  end
end

post '/questions/:id/comments' do
  @question = Question.find(params[:id])
  @comment = @question.comments.new({ body: meow_comment(params[:comment][:body]), author: meow_comment(params[:comment][:author]), user_id: params[:comment][:user_id]})
  if request.xhr?
    if @comment.save
      content_type :json
      {comment: params[:comment]}.to_json
    end
  else
    if @comment.save
      redirect "/questions/#{params[:id]}"
    else
      @errors = @comment.errors.full_messages
      erb :'/comments/new'
    end
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
