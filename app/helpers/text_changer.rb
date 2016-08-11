 # input.gsub(/[a-zA-z]/, 'meow')

def meow_question(input)
  cat_question = ["Meow, meow meow meow? Meow MEOW meow meow meow. Meow!?", "MEOW MEOW MEOW MEOW MEOW MEOW MEOW MEOW MEOW MROWWWWWWW!!!!!!!!?", "Meow meow meow meow meeee-OW?", "Meow meow meow...meow meow. MEOW, meow meow? Meow meow meow, meow. Meow mrow meow purr meow meow. Meow?", "MEOW MEOW! Meow, meow meow meow meow? Meow, meow meow meow meow meow meow meow meow meow meow meow meow meow meow. Meow meow meow meow? Meow meow!", "MEOW meow, meow meow meow meow. Meow? Meow meow meow meow meow! Meow meow? Purr!", "PURR! Meow meow, meow meow meow meow? Mrowwww! Meow? Meow meow meow, meow meow meow meow meow meow meow meow meow meow meow meow?", "Meow meow, meow meow meow meow puuuuurrrrrrrrrrr! Mrow?", "Meow meow! Meow meow meow meow meow? Meow!?"]
  output = cat_question.sample
end

def meow_answer(input)
  cat_answer = ["Meow! Meeeee-ow. Meow meow meow, meow meow meow. Meow meow!", "Meow meow meow meow.", "Meow meow meow meow meow purrr purr meow meow meow.", "Meowwwww, meow meow! Meow meow meow? Meow meow meow meow, meow meow meow meow meow purrr. Meow!", "Meow meow meow meow meow meow meow meow. Meow meow meow meow meow meow meow meow meow meow, meow meow meow meow meow!", "Meow meow meow meow meow meow meow meow. Meow meow meow meow meow meow meow meow meow meow, meow meow meow meow meow! Meow meow? Meow meow meow meow meow meow meow meow. Meow meow meow meow meow meow meow meow meow meow, meow meow meow meow meow.", ]
  output = cat_answer.sample
end

def meow_comment(input)
  cat_comment = ["Meow! Meow meow.", "Meow meow meow meow meow purrr purr meow meow meow.", "Meowwwww!", "Meow meow meow meow meow meow meow meow.", "Meow meow, meow.", "Meow meow meow. Meow! Meow? Meeeow.", "meow", "MEOW!", "Meow meow? Meow!", "Meow meow meow meow meow meow meow meow, meow meow meow meow. Meow meow meow? Meow, meow meow meow meow meow!", "MROW!?"]
  output = cat_comment.sample
end

#driver code
# puts "What would you like to meowify?"
# response = gets.chomp
# p meow_question(response)
