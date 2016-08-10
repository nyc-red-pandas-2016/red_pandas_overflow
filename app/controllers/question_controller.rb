get '/questions/show' do
  @questions = Question.all
  erb :'/questions/show'
end

get '/questions/:id' do

end
