get '/tags/show' do
  @question_array = []

  tags = Tag.all.find_all do |tag|
           /#{params[:tag]}/ =~ tag.name
         end

  tags.each do |tag|
    tag.taggable_type == "Question"
    @question_array << Question.find(tag.taggable_id)
  end

  erb :'/tags/show'
end
