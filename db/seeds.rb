content_for_users = [
  { :username => "waltercat",
    :email  => "walter@cat.com",
    :password => "password"
    },
  { :username => "neillcat",
    :email  => "neill@cat.com",
    :password => "password"
    },
    { :username => "meowmatt",
    :email  => "matt@cat.com",
    :password => "password"
    },
    { :username => "meowlisa",
    :email  => "elisa@cat.com",
    :password => "password"
    },
    { :username => "ameowir",
    :email  => "amir@cat.com",
    :password => "password"
    },
]

User.create!(content_for_users)


content_for_questions_1 = [
  { :title => "Meow?",
    :body  => "Meow meow meow...meow meow. MEOW, meow meow? Meow meow meow, meow. Meow mrow meow purr meow meow. Meow?",
    :user_id => 1
    },
  { :title => "Meowwwww! Meow meow?",
    :body  => "MEOW MEOW MEOW MEOW MEOW MEOW MEOW MEOW MEOW MROWWWWWWW!!!!!!!!? Meow meow meow meow meeee-OW?",
    :user_id => 2
    },
    { :title => "Purr, purrrr",
    :body  => "PURR! Meow meow, meow meow meow meow? Mrowwww! Meow? Meow meow meow, meow meow meow meow meow meow meow meow meow meow meow meow?",
    :user_id => 3
    },
    { :title => "MROW!!!! Meow?",
    :body  => "Meow meow! Meow meow meow meow meow? Meow!?",
    :user_id => 4
    },
    { :title => "Meow!!!!!",
    :body  => "Meow meow meow...meow meow. MEOW, meow meow? Meow meow meow, meow. Meow mrow meow purr meow meow. Meow?",
    :user_id => 5
    },
]

content_for_questions_2 = [
  { :title => "Meowwwww? Purr.",
    :body  => "PURR! Meow meow, meow meow meow meow? Mrowwww! Meow? Meow meow meow, meow meow meow meow meow meow meow meow meow meow meow meow?",
    :user_id => 1
    },
  { :title => "Meow!!!!!",
    :body  => "MEOW MEOW! Meow, meow meow meow meow? Meow, meow meow meow meow meow meow meow meow meow meow meow meow meow meow. Meow meow meow meow? Meow meow!",
    :user_id => 2
    },
    { :title => "Meow, meow meow meow?",
    :body  => "Meow meow, meow meow meow meow. Meow? Meow meow meow meow meow! Meow meow? Purr! Meow, meow meow meow meow. Meow? Meow meow meow meow meow! Meow meow? Purr purr!",
    :user_id => 3
    },
    { :title => "Meeee-ow!",
    :body  => "Meow meow meow...meow meow. MEOW, meow meow? Meow meow meow, meow. Meow mrow meow purr meow meow. Meow meow meow meow meow. Meow meow? Meow meow meow, meow. Meow mrow meow meow meow. Meow?",
    :user_id => 4
    },
    { :title => "HISSS HISSSS!",
    :body  => "MRROOOOOOWWWWW! MEOW MEOW! Meow, meow meow meow meow? Meow, meow meow meow meow meow meow meow meow meow meow meow meow meow meow. Meow meow meow meow? Meow meow!",
    :user_id => 5
    },
]


Question.create!(content_for_questions_1)
Question.create!(content_for_questions_2)

content_for_answers_1 = [
  { :body => "Meow! Meeeee-ow. Meow meow meow, meow meow meow. Meow meow!",
    :author  => "neillcat",
    :user_id => 2,
    :question_id => 3
    },
  { :body => "Meow meow meow meow meow meow meow meow. Meow meow meow meow meow meow meow meow meow meow, meow meow meow meow meow!",
    :author  => "waltercat",
    :user_id => 1,
    :question_id => 2
    },
    { :body => "Meow meow meow meow, HISS!",
    :author  => "meowlisa",
    :user_id => 4,
    :question_id => 1
    },
    { :body => "Meow meow meow meow meow meow purrrrr meow meow. Meow meow meow meow meow meow meow meow meow, meow!",
    :author  => "meowmatt",
    :user_id => 3,
    :question_id => 4
    },
    { :body => "Me..me..ow? Meow!",
    :author  => "ameowir",
    :user_id => 5,
    :question_id => 5
    },
]

Answer.create!(content_for_answers_1)
