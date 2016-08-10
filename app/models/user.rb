class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :comments
  has_many :votes, as :voteables


end
