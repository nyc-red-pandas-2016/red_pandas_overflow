get '/questions/new' do
  require_user
  erb :'/questions/new'
end

post '/questions' do
  @question = Question.new(params[:question])
  if @question.save
    redirect '/questions/show'
  else
    @errors = @question.errors.full_messages
    erb :'/questions/new'
  end
end

get '/questions/show' do
  @questions = Question.all
  erb :'/questions/show'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'/questions/_display_specific_question'
end





