get '/questions/new' do
  logged_in?

  erb :'/questions/new'
end

post '/questions' do
  @question = Question.new({title: meow_title(params[:question][:title]), body: meow_question(params[:question][:body]), user_id: params[:question][:user_id]})
  if @question.save
    @question.tags.create(split_into_tags(params[:tag][:name]))
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
