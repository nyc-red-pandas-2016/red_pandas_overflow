def display_latest_questions
    @recent_questions = Question.last(5).reverse
end
