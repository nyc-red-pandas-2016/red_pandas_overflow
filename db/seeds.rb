# SEED FILE INFORMATION

content_for_users = [
  { :username => "CauliflowerKing",
    :email  => "CK12@dbc.com",
    :password => "password"
    },
  { :username => "AbrahamLincoln",
    :email  => "Emancipator1863@dbc.com",
    :password => "password"
    },
    { :username => "Gandhi",
    :email  => "OriginalG@dbc.com",
    :password => "password"
    },
    { :username => "LoveDoctor",
    :email  => "neill@dbc.com",
    :password => "password"
    },
    { :username => "blue_mermaid",
    :email  => "amazing_coder@dbc.com",
    :password => "password"
    },
]

User.create!(content_for_users)


content_for_questions_1 = [
  { :title => "Life's Meaning",
    :body  => "Hey guys, I was wondering what is the meaning of life? Can any of you guys tell me?",
    :user_id => 1
    },
  { :title => "MY TERM PAPER IS DUE TOMORROW!!!!!",
    :body  => "BROS and SISs!!! My term paper is due tomorrow! what do I do?  Can I just copy and paste from a New York Times article?  The professor will neer know, right??? Thanks team!",
    :user_id => 2
    },
    { :title => "Carnegie Hall - directions?",
    :body  => "How do I get to Carnegie Hall?  Is it a long way?",
    :user_id => 3
    },
    { :title => "Woodchucks",
    :body  => "So, if a woodchuck could chuck wood, hypothetically speaking, what quantity do you suppose he or she could chuck?  In say, an hour?",
    :user_id => 4
    },
    { :title => "Duane Reade",
    :body  => "Is Duane Reade secretly trying to take over New York City?  Also, do they accept coupons",
    :user_id => 5
    },
]

content_for_questions_2 = [
  { :title => "Time Travel???????   Science Fair",
    :body  => "For my science fair project, I want to invent a time machine.  Can anyone help me?  Do I need a flux capacitor or a tardis?",
    :user_id => 1
    },
  { :title => "Do you prefer to be liked, or respected??",
    :body  => "I have a job interview tomorrow, and I was going through possible questions.  This one stumped me.  WHich is better: to be liked or to be respected?",
    :user_id => 2
    },
    { :title => "Was the book Frankenstein really about state control?",
    :body  => "Was it?  I dunno. I could see it going either way.  Dr. Frankenstein is the state, and the monster is the body politic, i.e., the citizens. And the Doctor is trying to control our brains. What do you guys think?",
    :user_id => 3
    },
    { :title => "My pet Bartholomew Needs HELP!!!!!",
    :body  => "If a hippopatomus fell into a hole, how would you get it out? My pet Bartholomew fell into a 10 foot pit and he cannot get out.  I don't think any bones were broken, but he is pretty grumpy.  What do I do?",
    :user_id => 4
    },
    { :title => "Horses or Ducks",
    :body  => "Would you rather fight twenty duck-sized horses or one horse-sized duck?  I mean, it's quite a toss up.  I think I'd have to go with the twenty horses. I think I could win that fight.  What do you guys think?",
    :user_id => 5
    },
]


Question.create!(content_for_questions_1)
Question.create!(content_for_questions_2)



content_for_answers_1 = [
  { :body => "Everyone knows that the meaning of life is 42. Hope that helps.",
    :author  => "Gandhi",
    :user_id => 3,
    :question_id => 1
    },
  { :body => "Go with the tardis.",
    :author  => "Gandhi",
    :user_id => 3,
    :question_id => 6
    },
    { :body => "No way, man, that book was about man's egotism and lust for power.",
    :author  => "AbeyFace",
    :user_id => 2,
    :question_id => 8
    },
    { :body => "YES!! DR is trying to take over NYC.  The only thing that can stop them is CVS!!  Join the RebelliON!!",
    :author  => "chainsawbucktooth",
    :user_id => 4,
    :question_id => 5
    },
    { :body => "Hmmmmm.....that's a deep question. I'd have to go with being respected.  But it really all depends on the person, and I don't think people who prefer being liked are any less noble or good than the respected class.",
    :author  => "brocolisucks234",
    :user_id => 1,
    :question_id => 7
    },
]


content_for_answers_2 = [
  { :body => "Fill the hole with water, and the hippopatomus will float out. They are good swimmers, you know.",
    :author  => "Gandhi",
    :user_id => 5,
    :question_id => 9
    },
  { :body => "Knucklehead!!!! You waited too long to write your paper!! Better to talk to your professor and tell her what you did and ask for time.",
    :author  => "AbeyFace",
    :user_id => 2,
    :question_id =>2
    },
    { :body => "Practice, practice, practice.",
    :author  => "AbeyFace",
    :user_id => 2,
    :question_id =>3
    },
    { :body => "20 pounds. That's how much wood a chuck could chuck. I did the calculations.",
    :author  => "Gandhi",
    :user_id => 1,
    :question_id =>4
    },
    { :body => "Bring me the Big Duck. I could totally that guy down!! NO FEAR!!!",
    :author  => "Gandhi",
    :user_id => 3,
    :question_id => 10
    },
]

Answer.create!(content_for_answers_1)
Answer.create!(content_for_answers_2)
