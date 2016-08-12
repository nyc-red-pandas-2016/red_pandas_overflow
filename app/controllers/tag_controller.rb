get '/tags/show' do
  tags = Tag.all.find_all do |tag|
           /#{params[:tag]}/ =~ tag.name
         end
  
  erb :'/tags/show'
end
