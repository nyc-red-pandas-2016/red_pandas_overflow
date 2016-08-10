get '/questions/show' do
  @questions = Question.all
  erb :'/questions/show'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'/questions/_display_specific_question'
end
