get '/answers/new' do
  logged_in?

  erb :'/answers/new'
end

post '/answers' do
  answer = Answer.new(params[:answer])
  if answer.save
    answer.tags.create(split_into_tags(params[:tag][:name]))
    redirect "/questions/#{params[:answer][:question_id]}"
  else
    @question = Question.find(params[:answer][:question_id])
    @errors = answer.errors.full_messages
    @answer = Answer.all.find_by(best_answer: true)

    erb :'/questions/_display_specific_question'
  end
end

delete '/answers/:id' do
  @answer = Answer.find(params[:id])
  @answer.destroy
  redirect :'questions/show'
end

get '/answers/:id' do
  @best_answer = Answer.find(params[:id])
  redirect "/answers/#{@best_answer.id}/show"
end

get '/answers/:id/show' do
  @answer = Answer.find(params[:id])
  @question = @answer.question
  @answer.update_columns(best_answer: true)
  erb :'/questions/_display_specific_question'
end
