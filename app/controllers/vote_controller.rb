get '/vote/:id/up' do
  answer = Answer.find(params[:id])
  vote = Vote.find_by(voteable_id: params[:id])
  user = Vote.find_by(voteable_id: params[:id])

  if request.xhr?
    if user == nil
      if vote == nil
        vote = answer.votes.create(vote_count: 1).vote_count.to_s
      else
        up_vote = vote.vote_count + 1
        vote.update_columns(vote_count: up_vote).vote_count.to_s
      end
    else
      vote.vote_count.to_s
    end
  else
    if user == nil
      if vote == nil
        vote = answer.votes.create(vote_count: 1)
        id = answer.question.id
        redirect "/questions/#{id}"
      else
        up_vote = vote.vote_count + 1
        vote.update_columns(vote_count: up_vote)
        id = answer.question.id
        redirect "/questions/#{id}"
      end
    else
      id = answer.question.id
      redirect "/questions/#{id}"
    end
  end
end

get '/vote/:id/down' do
  answer = Answer.find(params[:id])
  vote = Vote.find_by(voteable_id: params[:id])
  user = Vote.find_by(voteable_id: params[:id])

  if request.xhr?
    if user == nil
      if vote == nil
        vote = answer.votes.create(vote_count: -1).vote_count.to_s
      else
        down_vote = vote.vote_count - 1
        vote.update_columns(vote_count: down_vote).vote_count.to_s
      end
    else
      vote.vote_count.to_s
    end
  else
    if user == nil
      if vote == nil
        vote = answer.votes.create(vote_count: -1)
        id = answer.question.id
        redirect "/questions/#{id}"
      else
        down_vote = vote.vote_count - 1
        vote.update_columns(vote_count: down_vote)
        id = answer.question.id
        redirect "/questions/#{id}"
      end
    else
      id = answer.question.id
      redirect "/questions/#{id}"
    end
  end
end
