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
    erb :'/questions/_display_specific_question'
  end
end

# Strecht goal
# delete '/answers/:id' do
#   answer = Answer.find(params[:id])
#   answer.delete
#   redirect :index
# end
