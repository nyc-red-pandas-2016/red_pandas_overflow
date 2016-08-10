get '/' do
  @recent_questions = Question.last(5).reverse
  erb :'index'
end
