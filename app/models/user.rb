class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :comments
  has_many :votes, as :voteables
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true

end
